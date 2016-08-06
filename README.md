# [@jonikorpi](https://www.twitter.com/jonikorpi)'s plain CSS starter kit

## reset.css
- A CSS reset based on [Normalize](https://necolas.github.io/normalize.css/) and the * selector.
- Focused on making browser default styling less annoying.

## main.css
- Some easy-to-forget things you should always set, like `::selection`.
- Typography classes for body text and UI elements: aligned to [a slightly flexing](http://codepen.io/CrocoDillon/pen/jgmwt?editors=0010) 1rem baseline grid, readable and useful at all screen widths above 320px.
- Typography classes for massive headings and such: scaled to always fit the screen width, but still readable at 320px.

## classes.css
- Flexbox-classes that try to make sense of its weird syntax.
- Magical [owl selector](http://alistapart.com/article/axiomatic-css-and-lobotomized-owls) classes for automatically adding margins between and borders around child elements.
- [Tachyons](http://tachyons.io/)-inspired classes for paddings and margins, aligned to the 1rem baseline grid mentioned above.
- A basic color scheme created with awesome data scientist color pickers: [I Want Hue](http://tools.medialab.sciences-po.fr/iwanthue/) and [HCL Picker](http://tristen.ca/hcl-picker/).
- Entry animation classes (played once when the element is added to the DOM).

## index.html
- A plain typography test for the all the CSS mentioned above.
- Some easy-to-forget meta tags and such.

## Things to note:
- The primary idea is to avoid writing new CSS or having to look into CSS files to style new things. `<header class="position-all fixed padding-1 color-5 bg-1">` instead of `<header class="masthead">`.
- The secondary idea is to avoid having to write media queries. The flexing baseline grid and typography presets help with this a lot.
- The CSS is terrible without some sort of templating/component system like React. Without one you'll end up copy-pasting and micromanaging class names a lot.
- The CSS assumes it gets run through [autoprefixer](https://github.com/postcss/autoprefixer).
