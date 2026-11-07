(async function captureElementFixed(id, padding = 40, backgroundColor) {
    const el = document.getElementById(id);
    if (!el) {
        console.error(`Element with id "${id}" not found!`);
        return;
    }

    const bodyStyle = getComputedStyle(document.body);
    const rootStyle = getComputedStyle(document.documentElement);
    backgroundColor = backgroundColor || bodyStyle.getPropertyValue('--background-primary').trim();
    backgroundColor = backgroundColor || bodyStyle.backgroundColor;
    if (backgroundColor === 'rgba(0, 0, 0, 0)') {
        backgroundColor = rootStyle.backgroundColor;
    }
    if (!backgroundColor || backgroundColor === 'rgba(0, 0, 0, 0)') {
        backgroundColor = '#ffffff';
    }

    if (typeof html2canvas === 'undefined') {
        console.log('Loading rendering engine...');
        await new Promise((resolve, reject) => {
            const script = document.createElement('script');
            script.src = 'https://cdnjs.cloudflare.com/ajax/libs/html2canvas/1.4.1/html2canvas.min.js';
            script.onload = resolve;
            script.onerror = reject;
            document.head.appendChild(script);
        });
    }

    console.log('Capturing with deep inline-style preservation...');

    // 1. Get exact current dimensions on screen
    const computedWidth = el.getBoundingClientRect().width;

    // 2. Temporarily lock element width inline to prevent any reflow
    const originalWidthStyle = el.style.width;
    const originalMaxWidthStyle = el.style.maxWidth;
    el.style.width = `${computedWidth}px`;
    el.style.maxWidth = `${computedWidth}px`;

    // 3. Render the element, deep-copying all inline styles of child elements into the clone
    let sourceCanvas;
    try {
        sourceCanvas = await html2canvas(el, {
            scale: 2, // 2x Retina resolution
            useCORS: true,
            backgroundColor,
            logging: false,
            windowWidth: window.innerWidth,
            windowHeight: window.innerHeight,
            onclone: (clonedDoc) => {
                const clonedEl = clonedDoc.getElementById(id);
                if (clonedEl) {
                    clonedEl.style.width = `${computedWidth}px`;
                    clonedEl.style.maxWidth = `${computedWidth}px`;

                    // Recursively map all original inline styles to the cloned children
                    const originalDescendants = el.querySelectorAll('*');
                    const clonedDescendants = clonedEl.querySelectorAll('*');

                    originalDescendants.forEach((origChild, index) => {
                        if (clonedDescendants[index]) {
                            // Copy exact inline styles and computed flex/display properties
                            clonedDescendants[index].style.cssText = origChild.style.cssText;
                        }
                    });
                }
            }
        });
    } finally {
        // Restore original styles on the live page, even if rendering fails
        el.style.width = originalWidthStyle;
        el.style.maxWidth = originalMaxWidthStyle;
    }

    // 4. Create a padded final canvas frame
    const finalCanvas = document.createElement('canvas');
    const ctx = finalCanvas.getContext('2d');
    
    const scaledPadding = padding * 2; // Adjust for 2x scale
    finalCanvas.width = sourceCanvas.width + (scaledPadding * 2);
    finalCanvas.height = sourceCanvas.height + (scaledPadding * 2);

    // 5. Draw centered onto the padded frame
    ctx.fillStyle = backgroundColor;
    ctx.fillRect(0, 0, finalCanvas.width, finalCanvas.height);
    ctx.drawImage(sourceCanvas, scaledPadding, scaledPadding);

    // 6. Trigger direct file download
    const pngDataUrl = finalCanvas.toDataURL('image/png');
    const a = document.createElement('a');
    a.href = pngDataUrl;
    a.download = `${id}-snapshot.png`;
    document.body.appendChild(a);
    a.click();
    document.body.removeChild(a);

    console.log(`%c Success! Downloaded ${id}-snapshot.png with all inner inline styles preserved.`, 'color: #22c55e; font-weight: bold; font-size: 14px;');
})('screenshot', 50); // <-- Change the ID, padding, or background color as needed
