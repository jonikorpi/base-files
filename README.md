These are the base CSS files I use to start new projects.

# Usage

Import all the files you need. In `create-react-app` you would do: `import "jonikorpi-base-files/reset.css";` and so on.

## reset.css

Import this first if you're using it. It's a combination of normalize.css and the star selector CSS reset. Tries to set sane, non-annoying defaults.

## baseline.css

Sets up a `1rem` baseline grid. Meaning `1rem` will always be equal to `<body>`'s `line-height`. So for example if you need a padding of 2 baselines anywhere in your CSS you can just do `padding: 2rem;`, and not have to worry about any of the maths involved in traditional baseline grid implementations.

The baseline grid also scales slightly, or "flexes", meaning everything measured in rems becomes slightly bigger in larger viewports. You can adjust this by overriding (see below) `--baselineScaling: 0.3`. (Set to `0` to disable.) Details on the technique: http://codepen.io/CrocoDillon/pen/jgmwt?editors=0010

You should override the default properties with your own, in your own CSS file: `html { --baselineSize: 1em; --baselineScaling: 0.3; }`.

Then just use rems in your own CSS to set up your typography, margins, paddings, heights, widths, everything: `body { font-size: 0.75rem; } h1 { font-size: 1.25rem; line-height: 1.5rem; }`. (Don't change `<html>`'s `font-size` or everything will break).

## spacing.css

A few minimalistic classes that should handle most of the paddings and margins you'll need.

If you have a container and need margins between its children, use `.margins-x` or `.margins-y`. (Using both at once to create margins in a grid-like layout will not work well. Better to use CSS Grid for that.)

On their own they'll create margins equal to `1rem`: `<div class="container margins-x">…</div>`. To adjust the size override their respective CSS variables: `<div class="container margins-y" style="--margins-y: 1rem;">…</div>`.

You can use `.margin` and `.padding` similarly, to quickly give a single element some padding or margin: `<div class="padding" style="--padding: 2rem;">…</div>`;

## flexbox.css

A couple of flexbox utility classes so that you don't have to keep writing them again and again.

## forms.css

`reset.css` destroys many default form element styles. This brings some of them back: bordered input fields and selects, slightly rounded buttons. (If needed, use `.fake-link` to revert the styles and make a button look like a link.)

## safe-areas.css

Classes that add margins equal to `env(safe-area-inset-right)` and so on, for implementing easy support of iPhone X and other non-rectangular devices.
