---
layout: default
title: Media
permalink: /style-guide/media/
---

# Media

This page validates image rendering, responsive behaviour, captions, SVG rendering, transparency, animation and embedded media.

---

## Standard Image

![Landscape](/assets/images/landscape.webp)

---

## Linked Image

[![Landscape Thumbnail](/assets/images/landscape.webp)](/assets/images/landscape.webp)

---

## Figure with Caption

<figure>

![Architecture Diagram](/assets/images/architecture.svg)

<figcaption>

Project architecture overview.

</figcaption>

</figure>

---

## SVG

![SVG Logo](/assets/images/logo.svg)

---

## Transparent PNG

![Transparent Image](/assets/images/transparent.png)

---

## Animated WebP

![Animated Emoji](/assets/emoji/noto-emoji/rocket.webp)

---

## Small Image

![Avatar](/assets/images/avatar.webp)

---

## Large Image

![Wide Banner](/assets/images/banner.webp)

---

## Tall Image

![Portrait](/assets/images/portrait.webp)

---

## Image Gallery

| Image | Description |
|-------|-------------|
| ![](/assets/images/avatar.webp) | Small thumbnail |
| ![](/assets/images/logo.svg) | SVG |
| ![](/assets/emoji/noto-emoji/rocket.webp) | Animated WebP |

---

## Responsive Behaviour

Resize the browser window to verify image scaling, spacing and overflow behaviour.

---

## Image Inside Blockquote

> ![Architecture](/assets/images/architecture.svg)

---

## HTML Picture Element

<picture>

<source
    srcset="/assets/images/landscape.webp"
    type="image/webp">

<img
    src="/assets/images/landscape.png"
    alt="Landscape">

</picture>

---

## HTML Video

<video
    controls
    width="100%">

    <source
        src="/assets/media/sample.mp4"
        type="video/mp4">

</video>

---

## HTML Audio

<audio controls>

    <source
        src="/assets/media/sample.mp3"
        type="audio/mpeg">

</audio>

---