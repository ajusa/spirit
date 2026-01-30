# Spirit CSS

A modern, lightweight, and responsive CSS framework designed for building beautiful interfaces with minimal effort.

**[Live Demo](https://ajusa.github.io/spirit/)**

## Quick Start

### CDN

Use Spirit CSS directly via jsDelivr:

**Production (Minified):**
```html
<link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/ajusa/spirit@main/spirit.min.css">
```

**Development (Unminified):**
```html
<link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/ajusa/spirit@main/spirit.css">
```

## Features

- **Component-First:** Includes rich components like Cards, Chips, Menus, Dialogs, and Toasts.
- **Responsive Grid:** A 12-column flexbox grid with responsive modifiers.
- **Dark Mode Support:** Built-in variables for easy theming.
- **Utility Classes:** A comprehensive set of utilities for spacing, typography, and layout.
- **No JavaScript Dependency:** Pure CSS for all visual components (some interactive components like Dialogs may require minimal JS toggling).

## Development

To build the bundled CSS files:

```bash
./build.sh
```

This will generate:
- `spirit.css` (Bundled)
- `spirit.min.css` (Minified)

## Examples

Check out the example pages in the repository:
- `index.html` - Component gallery
- `startup.html` - Landing page example
- `blog.html` - Blog layout example

## Credit
spirit.css is heavily based on Spectre CSS, and the class names are based on Beer CSS.
