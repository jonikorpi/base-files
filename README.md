# [@jonikorpi](https://www.twitter.com/jonikorpi)'s plain CSS starter kit

## Contents

### reset.css (non-project-specific)
- A CSS reset based on [Normalize](https://necolas.github.io/normalize.css/) and the * selector.
- Focused on making browser default styling less annoying.

### classes.css (non-project-specific)
- Flexbox-classes that try to make sense of its weird syntax.
- Magical [owl selector](http://alistapart.com/article/axiomatic-css-and-lobotomized-owls) classes for automatically adding margins between and borders around child elements.
- [Tachyons](http://tachyons.io/)-inspired classes for paddings and margins, aligned to a 1rem baseline grid.
- Entry animation classes (played once when the element is added to the DOM).

### colors.css (project-specific)
- A basic color scheme created with awesome data scientist color pickers: [I Want Hue](http://tools.medialab.sciences-po.fr/iwanthue/) and [HCL Picker](http://tristen.ca/hcl-picker/).

### main.css (project-specific)
- Typography classes for body text and UI elements: aligned to [a slightly flexing](http://codepen.io/CrocoDillon/pen/jgmwt?editors=0010) 1rem baseline grid. Readable and useful at all screen widths above 320px.
- Typography classes for massive headings and such: scaled to always fit the screen width, but still readable at 320px.
- Some easy-to-forget things you should always set, like `::selection`.

### index.html
- A plain typography test for the all the CSS mentioned above.
- Some easy-to-forget meta tags and such.

## Usage the old-fashioned way
```html
<link rel="stylesheet" href="reset.css"/>
<link rel="stylesheet" href="classes.css"/>
<link rel="stylesheet" href="colors.css"/>
<link rel="stylesheet" href="main.css"/>
```

Or however you like to use CSS. You'll want to edit things in main.css.

## Usage with npm and something like create-react-app
```zsh
npm install jonikorpi-base-files --save
```

In index.js:
```js
import "jonikorpi-base-files/reset.css";
import "jonikorpi-base-files/classes.css";
import "jonikorpi-base-files/colors.css";
import "jonikorpi-base-files/main.css";
```

You'll probably want to edit main.css, though, so I guess you'll have to make a copy of it in your app and import that instead.

## Things to note:
- The primary idea is to avoid having to touch CSS files to style new things. `<header class="position-top fixed padding-1 color-5 bg-1 child-margins-x-1">` instead of `<header class="masthead">`.
- The secondary idea is to avoid having to write media queries. The flexing baseline grid and the typography presets help with this a lot.
- This CSS is terrible without some sort of templating/component system like React. Without one you'll end up copy-pasting class names a lot.
- The CSS assumes it gets run through [autoprefixer](https://github.com/postcss/autoprefixer).
