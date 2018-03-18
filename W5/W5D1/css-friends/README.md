# CSS Friends

## Phase 0: Reset

**Topics:** [Reset][t-reset], [Appearance][t-appearance],
[Box-model][t-box-model],
[Box-sizing][t-box-sizing], [Cursor][t-cursor]

- [Screenshot A][ss-00-a]
- [Live][live-00]

Let's start with a clean slate, by writing a reset in
`./css/00-reset.css`. To speed you up, we provided some tag selectors to
get you started. Be wise about which properties to inherit, and which to
hard-code. Besides the regular, I'd like you to set the `box-sizing`
property to inherit, to have all elements behave the same, which is
content-box, by default.

Let's make all images `block` elements, have them expand to the full
`100%` width of their parent container, and have their height grow
`auto`, which means proportionally.

Remove the bullets from list items, strip the default styling from form
input elements by setting their appearance to none (see [here][appearance-info]), and show the little
pointer hand on buttons to make it obvious you can click.

[ss-00-a]: ../docs/screenshots/00-reset-a.png
[live-00]: http://appacademy.github.io/css-friends/solution/00-reset.html

[t-reset]: https://github.com/appacademy/css-demos/#user-agent-styles
[t-appearance]: http://css-tricks.com/almanac/properties/a/appearance/
[t-box-model]: https://github.com/appacademy/css-demos/#box-model
[t-box-sizing]: http://appacademy.github.io/css-demos/box-sizing.html
[t-cursor]: https://developer.mozilla.org/en-US/docs/Web/CSS/cursor
[appearance-info]: https://css-tricks.com/almanac/properties/a/appearance/
