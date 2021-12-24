# CHANGELOG

## [1.4.0] - 2021/12/24

## New icons

This release adds 153 new icons to the family:

`alien`, `align-bottom-simple`, `align-center-horizontal-simple`, `align-center-vertical-simple`, `align-left-simple`, `align-right-simple`, `align-top-simple`, `angular-logo`, `app-store-logo`, `apple-podcasts-logo`, `arrows-horizontal`, `arrows-vertical`, `asterisk-simple`, `backpack`, `balloon`, `barricade`, `bathtub`, `battery-plus`, `beer-bottle`, `behance-logo`, `bezier-curve`, `binoculars`, `butterfly`, `cactus`, `camera-rotate`, `campfire`, `circle-notch`, `coat-hanger`, `codepen-logo`, `codesandbox-logo`, `coin-vertical`, `coins`, `confetti`, `copyleft`, `currency-eth`, `currency-kzt`, `currency-ngn`, `cursor-text`, `cylinder`, `detective`, `diamonds-four`, `drop-half-bottom`, `egg`, `egg-crack`, `equalizer`, `exam`, `eyedropper-sample`, `eyeglasses`, `file-audio`, `file-cloud`, `file-code`, `file-css`, `file-csv`, `file-doc`, `file-html`, `file-image`, `file-jpg`, `file-js`, `file-jsx`, `file-lock`, `file-png`, `file-ppt`, `file-rs`, `file-ts`, `file-tsx`, `file-video`, `file-vue`, `file-xls`, `file-zip`, `film-script`, `film-slate`, `flag-checkered`, `flying-saucer`, `folder-dotted`, `folder-lock`, `folder-star`, `folder-user`, `folder-simple-dotted`, `folder-simple-lock`, `folder-simple-star`, `folder-simple-user`, `function`, `google-chrome-logo`, `google-photos-logo`, `google-podcasts-logo`, `gradient`, `graph`, `hamburger`, `hand-eye`, `heart-break`, `heart-straight-break`, `kanban`, `keyhole`, `ladder`, `ladder-simple`, `linux-logo`, `list-checks`, `mask-happy`, `mask-sad`, `microphone-stage`, `microsoft-excel-logo`, `microsoft-powerpoint-logo`, `microsoft-teams-logo`, `microsoft-word-logo`, `mountains`, `music-notes-plus`, `needle`, `option`, `parachute`, `password`, `pencil-simple-line`, `perspective`, `piano-keys`, `pinwheel`, `plug`, `plugs`, `plugs-connected`, `police-car`, `popcorn`, `radio-button`, `rug`, `scan`, `scroll`, `shield-star`, `sidebar`, `sidebar-simple`, `signpost`, `skull`, `spiral`, `square-half-bottom`, `stack-overflow-logo`, `stamp`, `strategy`, `sunglasses`, `syringe`, `tabs`, `taxi`, `text-indent`, `text-outdent`, `textbox`, `toilet`, `trademark-registered`, `traffic-cone`, `traffic-signal`, `user-switch`, `vault`, `vignette`, `wave-sawtooth`, `wave-sine`, `wave-square`, `wave-triangle`, `webcam`, `yin-yang`

## Regressions

Due to limitations with our tools, our icon font no longer supports ligatures, for the time being. Use the unicode codepoints, or class names provided on our site if in a web context. We're looking for a solution to this, and hope to have one soon.

## Revisions

### Notable changes:

- Redrew `film-strip` to be more readable
<img width="306" alt="1 4-film-strip-change" src="https://user-images.githubusercontent.com/26732044/147204627-8fca8120-ff31-414f-b051-a800bbaa090c.png">

- Added one more line to `pencil` and `pencil-line` to push some contrast with the `pencil-simple` set; use `pencil-simple` for a more minimal approach
<img width="306" alt="1 4-pencil-change" src="https://user-images.githubusercontent.com/26732044/147204661-01ca69e9-79bc-4385-8bb7-f8d32e5fd174.png">

- Adjusted dotted line to solid line for `star-half-fill` and `star-half-duotone`
<img width="306" alt="1 4-star-half-change" src="https://user-images.githubusercontent.com/26732044/147204672-71a3afa2-c036-470b-a39b-4237b782fafc.png">

- Hatching approach reworked across `drop-half`, `circle-half`, `circle-half-tilt`, and `square-half`
<img width="306" alt="1 4-hatching-change" src="https://user-images.githubusercontent.com/26732044/147204693-4400eb30-28ec-429a-abf0-ec1a3d50bdf1.png">

### Micro enhancements:
- Adjusted `file-pdf` slightly as we expand the `file` set
- Softened sharp outer edges in  handful of icons: `armchair-fill`, `dribbble-logo-fill`, `facebook-logo-fill`, `pinterest-logo-fill`, `briefcase-metal-fill`, `download-fill`, `upload-fill`, `airplay-fill`, `wall-fill`, `ruler-fill`, `baby-fill`, `cat-fill`, `gauge-fill`, `cloud-fog-fill`, `cloud-check-fill`, `cloud-arrow-up-fill`, `cloud-arrow-down-fill`, `cloud-lightning-fill`, `cloud-rain-fill`, `cloud-snow-fill`, `cloud-fill`, `paper-plane-fill`, `paper-plane-right-fill`, `paper-plane-tilt-fill`, `jeep-fill`, `at-fill`, `wifi-x-fill`, `cell-signal-x-fill`, `floppy-disk-back-fill`, `heartbeat-fill`, `baseball-fill`, `tennis-ball-fill`, `basketball-fill`

### Visual bugs:
- Fixed `hands-clapping-fill` and `hands-clapping-duotone` to be the right weight
- Fixed a corner radius mistake in one corner of `pencil-simple`

### Refactoring:
- Anchor points cleaned up in many icons
- Duplicate elements removed from `truck`, `key`, `hand`, `hand-palm`, and `hand-grabbing` sets
- Joined lines in `hand-pointing` set

## Related projects

Check out our plugins for popular design tools:

- [phosphor-figma](https://www.figma.com/community/plugin/898620911119764089/Phosphor-Icons) ▲ Phosphor plugin for Figma
- [phosphor-sketch](https://github.com/phosphor-icons/phosphor-sketch) ▲ Phosphor plugin for Sketch

For developers, please check out our framework-specific packages:

- [phosphor-react](https://github.com/phosphor-icons/phosphor-react) ▲ Phosphor icon component library for React
- [phosphor-vue](https://github.com/phosphor-icons/phosphor-vue) ▲ Phosphor icon component library for Vue
- [phosphor-icons](https://github.com/phosphor-icons/phosphor-icons) ▲ Phosphor icons for Vanilla JS
- [phosphor-flutter](https://github.com/phosphor-icons/phosphor-flutter) ▲ Phosphor IconData library for Flutter
- [phosphor-webcomponents](https://github.com/phosphor-icons/phosphor-webcomponents) ▲ Phosphor icons as Web Components [WIP]

## [1.3.1] - 2021/08/14

### New icons

This release adds 122 new icons to the ever-growing set, based on requests and suggestions from the community:

`address-book`, `baby`, `baseball`, `basketball`, `bird`, `boat`, `books`, `bounding-box`, `brackets-angle`, `brackets-curly`, `brackets-round`, `brackets-square`, `brain`, `brandy`, `cake`, `calendar-check`, `calendar-plus`, `cat`, `cookie`, `cooking-pot`, `dog`, `dots-six`, `dots-six-vertical`, `ear`, `ear-slash`, `eject-simple`, `export`, `factory`, `fast-forward`, `file-dotted`, `file-pdf`, `files`, `film-strip`, `fish`, `fish-simple`, `flask`, `floppy-disk-back`, `flow-arrow`, `flower`, `flower-lotus`, `football`, `gas-pump`, `gender-female`, `gender-intersex`, `gender-male`, `gender-neuter`, `gender-nonbinary`, `gender-transgender`, `gitlab-logo`, `gitlab-logo-simple`, `hands-clapping`, `headlights`, `identification-badge`, `key-return`, `layout`, `line-segment`, `line-segments`, `magic-wand`, `messenger-logo`, `notification`, `paint-brush`, `paint-brush-household`, `paint-roller`, `palette`, `person-simple`, `person-simple-run`, `person-simple-walk`, `pill`, `pizza`, `playlist`, `polygon`, `prescription`, `queue`, `radio`, `recycle`, `rewind`, `robot`, `ruler`, `scales`, `selection`, `selection-all`, `selection-background`, `selection-foreground`, `selection-inverse`, `selection-plus`, `selection-slash`, `shield-checkered`, `shield-plus`, `shower`, `soccer-ball`, `sparkle`, `square-logo`, `star-four`, `star-half`, `stripe-logo`, `student`, `swap`, `television`, `television-simple`, `tennis-ball`, `terminal-window`, `test-tube`, `text-aa`, `text-h`, `text-h-five`, `text-h-four`, `text-h-one`, `text-h-six`, `text-h-three`, `text-h-two`, `tiktok-logo`, `toilet-paper`, `tree`, `tree-evergreen`, `user-focus`, `user-list`, `users-four`, `users-three`, `volleyball`, `waves`, `windows-logo`, `wine`

### Revisions

Though we avoid changing names or glyphs as much as possible to keep the library stable for everyone, we’ll push a change when we believe it’s important long-term for the cohesion, clarity, and readability of each icon and the icon system. We're working on being more transparent on these changes for every release.

#### Notable changes:

- Name change: `pedestrian` → `person`
- Glyph change: `user-gear`, `user-plus`, and `user-minus` have been revised from a cutout treatment to separate elements to improve readability and an awkward treatment of the fill weight; moving forward this will help us build out a better user set
  <img width="306" alt="1 3-user-set-change" src="https://user-images.githubusercontent.com/26732044/124868856-66eb9f80-df8e-11eb-94c1-486f877ee685.png">

- Glyph change: `floppy-disk` now depicts the front of a floppy disk and `floppy-disk-back` carries forth the previous treatment, with an adjustment to the beveled corner for accuracy 🤓
  <img width="306" alt="1 3-floppy-disk-change" src="https://user-images.githubusercontent.com/26732044/124869543-5ab41200-df8f-11eb-8b1d-9529537bf767.png">

- Added duotone treatments for: `atom`, `push-pin-slash`, `push-pin-simple-slash`, `arrow-square-in`, `arrow-square-out`
- Added fill treatments for the arrow set

### Optical adjustments:

- Better alignment (shield set, `info`)
- Less anchor points / anchor point bug fixes (smiley set, gear set, `github-logo`)
- Better readability (`coffee-bold`)
- Consistency in scale (`lamp`, `monitor-play`, `fast-forward-circle`, `rewind-circle`, `twitter-logo`, `linkedin-logo`, `arrows-down-up`, `arrows-left-right`)
- Better fill treatment (`note-pencil`, `pencil-circle`)
- Consistency in like icons (`hand-palm`, `hand-waving`, `paint-brush-broad`, `link-bold`, `cloud-fog-fill`)

## [1.2.0] - 2021/03/20

### Flutter Update

Migrate to Flutter 2 and use Sound Null Safety

### Icons Update

Icon Font implementations of our family of 772 icons in 5 weights.

Added in this release:

```
airplane-tilt, anchor-simple, app-window, armchair, arrow-square-in, arrow-square-out, article-medium, article-ny-times, atom, bag-simple, bell-ringing, bell-z, bell-simple-ringing, bell-simple-z, bookmarks-simple, briefcase-metal, bug, bug-beetle, bug-droid, cardholder, chalkboard, chalkboard-simple, chalkboard-teacher, circle-dashed, circle-wavy, circle-wavy-check, circle-wavy-question, circle-wavy-warning, coin, cpu, crown, crown-simple, currency-btc, discord-logo, door, file-arrow-up, fire-simple, flag-banner, flame, frame-corners, gauge, ghost, graduation-cap, hand-soap, handbag-simple, highlighter-circle, infinity, knife, lamp, lifebuoy, lightbulb-filament, magnet, magnet-straight, marker-circle, megaphone-simple, mouse-simple, notepad, ny-times-logo, paw-print, pen-nib, picture-in-picture, pinterest-logo, placeholder, planet, presentation, presentation-chart, projector-screen, projector-screen-chart, push-pin-simple, push-pin-simple-slash, quotes, scribble-loop, sim-card, smiley-wink, snapchat-logo, spinner, spinner-gap, spotify-logo, t-shirt, tag-chevron, toggle-left, toggle-right, traffic-sign, tree-structure, trophy, umbrella, umbrella-simple, wall, wallet
```

> **Note:** This package is to be considered in beta and is subject to change

---

## [1.1.2] - Initial Release

Initial release with all the icons from 1.1.2 icons version

Support the next styles

- Thin
- Light
- Regular
- Bold
- Fill

> **Note:** This package is to be considered in beta and is subject to change
