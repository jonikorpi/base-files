# [@jonikorpi](https://www.twitter.com/jonikorpi)'s drop-in plain CSS starter kit

Static CSS designed to complement component-based project structures, like ones using React with [styled-jsx](https://github.com/zeit/styled-jsx).


## Contents

### reset.css
- A CSS reset built on top of [Normalize](https://necolas.github.io/normalize.css/) and the * selector.
- Focused on making browser default styling less annoying.

### baseline.css
- Sets up [a slightly flexing](http://codepen.io/CrocoDillon/pen/jgmwt?editors=0010) baseline grid, where `1rem` === 1 line.

### magic.css
- Classes using the [owl selector](http://alistapart.com/article/axiomatic-css-and-lobotomized-owls) to automatically add margins or borders between child elements, based on the 1rem baseline grid set up in `baseline.css`.


## Usage
Use however you like to use CSS. Just make sure reset.css comes before any other CSS.

```html
<link rel="stylesheet" href="reset.css"/>
<link rel="stylesheet" href="baseline.css"/>
<link rel="stylesheet" href="magic.css"/>
<link rel="stylesheet" href="your-css-here.css"/>
```

## Usage with npm and something like create-react-app
```zsh
npm install jonikorpi-base-files --save
```

In index.js:
```js
import "jonikorpi-base-files/reset.css";
import "jonikorpi-base-files/baseline.css";
import "jonikorpi-base-files/magic.css";
```
