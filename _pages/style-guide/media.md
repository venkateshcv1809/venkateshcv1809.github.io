---
layout: page
title: Media
---

# Media

This page demonstrates how images, figures and embedded media are rendered.

---

## Standard Image

![Landscape](/assets/images/demo/800x450.jpg)

---

## Linked Image

[![Landscape](/assets/images/demo/800x450.jpg)](/assets/images/demo/800x450.jpg)

---

## Figure with Caption

<figure>
    <img
        src="/assets/images/demo/800x450.jpg"
        alt="Landscape image">
    <figcaption>
        Landscape image with caption.
    </figcaption>
</figure>

---

## Small Image

![Portrait](/assets/images/demo/300x600.jpg)

---

## Square Image

![Square](/assets/images/demo/400x400.jpg)

---

## Large Square Image

![Large Square](/assets/images/demo/600x600.jpg)

---

## Image Gallery

| Preview | Description |
|---------|-------------|
| ![](/assets/images/demo/300x600.jpg) | Portrait |
| ![](/assets/images/demo/400x400.jpg) | Square |
| ![](/assets/images/demo/600x600.jpg) | Large Square |
| ![](/assets/images/demo/800x450.jpg) | Landscape |

---

## Responsive Behaviour

Resize the browser window to verify image scaling, spacing and horizontal overflow.

---

## Image Inside Blockquote

> ![Landscape](/assets/images/demo/800x450.jpg)

---

## HTML Picture Element

<picture>
    <source
        srcset="/assets/images/demo/800x450.jpg"
        type="image/jpeg">
    <img
        src="/assets/images/demo/800x450.jpg"
        alt="Landscape image">
</picture>

---

## HTML Video

<video controls width="100%">
    <source
        src="/assets/images/demo/sample.mp4"
        type="video/mp4">
    Your browser does not support the video element.
</video>

---

## HTML Audio

<audio controls>
    <source
        src="/assets/images/demo/sample.mp3"
        type="audio/mpeg">
    Your browser does not support the audio element.
</audio>

---
