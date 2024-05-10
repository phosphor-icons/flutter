# CHANGELOG

## [2.1.0] - 2024/05/10

### New icons

`acorn`, `address-book-tabs`, `airplane-taxiing`, `ambulance`, `angle`, `approximate-equals`, `asclepius`, `avocado`, `axe`, `baby-carriage`, `barn`, `baseball-helmet`, `beach-ball`, `beanie`, `belt`, `binary`, `biohazard`, `blueprint`, `bomb`, `book-open-user`, `boules`, `bowl-steam`, `bowling-ball`, `box-arrow-up`, `boxing-glove`, `bread`, `building`, `building-apartment`, `building-office`, `bulldozer`, `cable-car`, `calendar-dot`, `calendar-dots`, `calendar-heart`, `calendar-minus`, `calendar-slash`, `calendar-star`, `car-battery`, `cards-three`, `caret-line-down`, `caret-line-left`, `caret-line-right`, `caret-line-up`, `cash-register`, `cell-tower`, `chat-centered-slash`, `chat-circle-slash`, `chat-slash`, `chat-teardrop-slash`, `checkerboard`, `cheers`, `cheese`, `chef-hat`, `cherries`, `cigarette`, `cigarette-slash`, `city`, `clock-user`, `clover`, `coffee-bean`, `columns-plus-left`, `columns-plus-right`, `compass-rose`, `court-basketball`, `cow`, `cowboy-hat`, `crane`, `crane-tower`, `cricket`, `crown-cross`, `desk`, `device-mobile-slash`, `device-rotate`, `disco-ball`, `dresser`, `drone`, `drop-simple`, `drop-slash`, `empty`, `exclamation-mark`, `eyes`, `fallout-shelter`, `farm`, `fediverse-logo`, `file-c`, `file-c-sharp`, `file-cpp`, `file-ini`, `file-md`, `file-py`, `file-txt`, `fire-truck`, `flag-banner-fold`, `flip-horizontal`, `flip-vertical`, `football-helmet`, `four-k`, `funnel-simple-x`, `funnel-x`, `globe-simple-x`, `globe-x`, `golf`, `gps`, `gps-fix`, `gps-slash`, `graphics-card`, `greater-than`, `greater-than-or-equal`, `hair-dryer`, `hand-arrow-down`, `hand-arrow-up`, `hand-deposit`, `hand-peace`, `hand-withdraw`, `hard-hat`, `head-circuit`, `high-definition`, `highlighter`, `hockey`, `hospital`, `hurricane`, `image-broken`, `intersection`, `invoice`, `island`, `jar`, `jar-label`, `joystick`, `lamp-pendant`, `lasso`, `lastfm-logo`, `lectern`, `lego`, `lego-smiley`, `less-than`, `less-than-or-equal`, `letter-circle-h`, `letter-circle-p`, `letter-circle-v`, `line-vertical`, `linktree-logo`, `list-heart`, `list-star`, `log`, `mailbox`, `map-pin-area`, `map-pin-plus`, `map-pin-simple`, `map-pin-simple-area`, `map-pin-simple-line`, `markdown-logo`, `mastodon-logo`, `matrix-logo`, `member-of`, `memory`, `meteor`, `microscope`, `money-wavy`, `monitor-arrow-up`, `mouse-left-click`, `mouse-middle-click`, `mouse-right-click`, `mouse-scroll`, `music-notes-minus`, `network`, `network-slash`, `network-x`, `not-equals`, `not-member-of`, `not-subset-of`, `not-superset-of`, `nuclear-plant`, `numpad`, `onigiri`, `open-ai-logo`, `orange`, `oven`, `panorama`, `pencil-ruler`, `pentagon`, `person-simple-circle`, `person-simple-hike`, `person-simple-ski`, `person-simple-snowboard`, `person-simple-swim`, `person-simple-tai-chi`, `phone-list`, `phone-pause`, `phone-transfer`, `picnic-table`, `ping-pong`, `pint-glass`, `pipe`, `pipe-wrench`, `pix-logo`, `popsicle`, `question-mark`, `rabbit`, `racquet`, `ranking`, `rectangle-dashed`, `replit-logo`, `resize`, `rows-plus-bottom`, `rows-plus-top`, `sailboat`, `scan-smiley`, `screwdriver`, `scribble`, `seal-percent`, `seat`, `seatbelt`, `security-camera`, `shipping-container`, `shovel`, `skype-logo`, `smiley-melting`, `sock`, `solar-panel`, `solar-roof`, `speedometer`, `sphere`, `spinner-ball`, `spray-bottle`, `stack-minus`, `stack-plus`, `standard-definition`, `steam-logo`, `subset-of`, `subset-proper-of`, `subtitles-slash`, `subway`, `superset-of`, `superset-proper-of`, `tea-bag`, `text-subscript`, `text-superscript`, `text-t-slash`, `threads-logo`, `three-d`, `tilde`, `tip-jar`, `tire`, `tornado`, `towel`, `tractor`, `tray-arrow-up`, `treasure-chest`, `tree-view`, `triangle-dashed`, `trolley`, `trolley-suitcase`, `truck-trailer`, `tumblr-logo`, `union`, `user-check`, `user-circle-check`, `user-circle-dashed`, `user-sound`, `vector-three`, `vector-two`, `video-conference`, `visor`, `washing-machine`, `waveform-slash`, `windmill`, `x-logo`, `yarn`

### Features

- Icon fonts are now tree-shaken when you import individual weights, e.g. `PhosphorIconsBold` (thanks @josh-burton)
- Icon fonts now have stable Unicode codepoints, which can be copied directly from our website!
- Icon fonts once again support ligatures in all weights except Duotone.
- We are now processing donations through both [GitHub Sponsors](https://github.com/sponsors/phosphor-icons) and [BuyMeACoffee](https://www.buymeacoffee.com/phosphoricons)! Your support is welcome and appreciated :)

### Revisions

#### Notable changes

- Updated `patreon-logo`
- Reworked `sneaker-move`
- Reworked `crown-*` icons
- Simplified some typographic elements, such as "T" in `article-ny-times`, "4" in `number-four -*`
- More distinct duotone treatments for various icons, especially small arrowheads
- Rectangular container fill treatments, including `list-*`, `text-*`, `sort-*`, and others
- More "filled-in" fill treatments for many other icons
- Knocked out vehicle windows in fill weight
- Various simplifications and visual improvements

#### Audits

- Adjusted gaps for readability
- Adjusted corner radiuses for consistency
- Improved optical centering
- Smoother curves: `anchor`, `flow-arrow`, `thermometer-hot`, `waves`
- Removed extraneous control points

#### Renames and deprecations

- Renamed `archive-box` to `box-arrow-down`
- Renamed `archive-tray` to `tray-arrow-down`
- Deprecated `folder-notch-*` icons, which now alias to their `folder-*` counterparts

> Existing names will continue to be available as aliases in 2.1, though may be removed in future releases.

## [2.0.1] - 2023/11/04

- Fix duotone icons alignment
- Fix duotone icons not working on web

## [2.0.0] - 2023/04/04

### New icons

`air-traffic-control`, `amazon-logo`, `arrows-merge`, `arrows-split`, `baseball-cap`, `basket`, `battery-plus-vertical`, `battery-vertical-empty`, `battery-vertical-full`, `battery-vertical-high`, `battery-vertical-low`, `battery-vertical-medium`, `beer-stein`, `bone`, `book-open-text`, `boot`, `bowl-food`, `bridge`, `broom`, `call-bell`, `camera-plus`, `car-profile`, `caret-circle-up-down`, `caret-up-down`, `carrot`, `cassette-tape`, `castle-turret`, `certificate`, `chair`, `champagne`, `charging-station`, `chart-donut`, `chart-line-down`, `chart-polar`, `chart-scatter`, `check-fat`, `church`, `circuitry`, `clock-countdown`, `cloud-warning`, `cloud-x`, `coda-logo`, `code-block`, `compass-tool`, `contactless-payment`, `control`, `couch`, `cross`, `cube-focus`, `cube-transparent`, `cursor-click`, `dev-to-logo`, `devices`, `dna`, `door-open`, `dot`, `dot-outline`, `dress`, `dropbox-logo`, `elevator`, `engine`, `escalator-down`, `escalator-up`, `exclude`, `exclude-square`, `fan`, `feather`, `file-archive`, `file-sql`, `file-svg`, `film-reel`, `fire-extinguisher`, `flag-pennant`, `flower-tulip`, `footprints`, `garage`, `gas-can`, `gavel`, `gear-fine`, `goggles`, `goodreads-logo`, `google-cardboard-logo`, `google-drive-logo`, `grains`, `grains-slash`, `grid-nine`, `guitar`, `hammer`, `hand-coins`, `hand-heart`, `hand-swipe-left`, `hand-swipe-right`, `hand-tap`, `hands-praying`, `heart-half`, `high-heel`, `hoodie`, `ice-cream`, `images`, `images-square`, `intersect-square`, `intersect-three`, `lighthouse`, `lightning-a`, `list-magnifying-glass`, `lockers`, `medal-military`, `meta-logo`, `metronome`, `microsoft-outlook-logo`, `minus-square`, `moped`, `moped-front`, `mosque`, `motorcycle`, `notches`, `notion-logo`, `office-chair`, `orange-slice`, `pants`, `paragraph`, `parallelogram`, `park`, `patreon-logo`, `paypal-logo`, `pencil-simple-slash`, `pencil-slash`, `pentagram`, `pepper`, `person-arms-spread`, `person-simple-bike`, `person-simple-throw`, `phone-plus`, `pi`, `piggy-bank`, `plant`, `play-pause`, `plug-charging`, `plus-square`, `potted-plant`, `radioactive`, `read-cv-logo`, `receipt-x`, `road-horizon`, `scooter`, `shapes`, `share-fat`, `shirt-folded`, `shooting-star`, `shrimp`, `sigma`, `signature`, `siren`, `slideshow`, `smiley-angry`, `sneaker`, `sneaker-move`, `soundcloud-logo`, `speaker-hifi`, `split-horizontal`, `split-vertical`, `square-split-horizontal`, `square-split-vertical`, `stairs`, `star-and-crescent`, `star-of-david`, `steering-wheel`, `steps`, `stethoscope`, `stool`, `subtitles`, `subtract`, `subtract-square`, `suitcase-rolling`, `swimming-pool`, `synagogue`, `tent`, `text-a-underline`, `text-columns`, `tidal-logo`, `tipi`, `toolbox`, `tooth`, `trademark`, `tram`, `tree-palm`, `unite`, `unite-square`, `usb`, `van`, `video`, `vinyl-record`, `virtual-reality`, `virus`, `warehouse`, `warning-diamond`, `waveform`, `webcam-slash`, `webhooks-logo`, `wechat-logo`, `wheelchair-motion`

### Features

- Backing fonts are now split by weight, reducing bundle size if you only use a subset of them
- Adds `PhosphorIcon` widget, which enables duotone weight and richer customization

### Migration Guide

To migrate from v1.0.0 to 2.0.0 you just need to change all your
`PhosphorIcons.iconStyle` to the new syntax `PhosphorIcons.style.icon`.
For example:

```dart
// previous
Icon(
  PhosphorIcons.pencilFill, // Pencil Fill Icon
)

// new
Icon(
  PhosphorIcons.fill.pencil, // Pencil Fill Icon
)

// new and suggested
PhosphorIcon(
  PhosphorIcons.fill.pencil, // Pencil Fill Icon
)
```

Also, we encourage you to use our new `PhosphorIcon` widget to have support for
duotone icons.

### Revisions

#### Notable changes:

- Distinct Fill and Duotone weights added for all icons
- Revised `github-logo` to better resemble their logo
- Revised `gitlab-logo` and `gitlab-logo-simple` to resemble their new logo
- Changed `battery-` set to be narrower
- Simplified `books` from 3 to 2 books
- Changed shape of `buildings`
- Updated `cell-signal-` set with bars for the Regular, Thin, Light, and Bold weights
- Revised `flag-banner` to appear to be in motion
- Simplified `image-square` to 1 mountain and updated `image` to have 2 discrete mountains
- Changed `calendar` date from "31" to "12"
- Thickened `cursor` stem
- Adjusted `bus` to read more like bus
- Rounded the corners in `money`
- Improved stem on `leaf-fill`
- Updated the ticks on `gauge`
- Inverted the fill treatments for `map-trifold-fill` and `cake-fill`
- Simplified `address-book` from 4 to 3 spiral rings
- Slimmed down `git-` set
- Revised scale of `number-` set
- Improved lettering of the `file-` set and `closed-captioning`
- Filled more of `grid-four-fill` and `barbell-fill`
- Simplified fill treatments for `pen-nib-fill`, `pen-nib-straight`, `lock-key-fill`, and `lock-key-open-fill`

#### Visual bugs and refactors:

- Fixed crooked lines in `codesandbox-logo`, `cube`, `star-half`, `star`, `hourglass-low`
- Fixed mispositioned lines in `paper-plane`, `credit-card`, `trophy`, `paperclip-horizontal`, `file-search`, `bicycle`
- Fixed extra anchor points or elements in `film-strip-fill`, `file-search-fill`, `wrench`, `floppy-disk`, `paw-print`, `truck`, `smiley-sad`, `text-strikethrough`
- Fixed incorrect opacity in `toilet-duotone`, `dots-three-outline-duotone`, `dots-three-outline-vertical-duotone`
- Fixed incorrect stroke thickness in `keyboard`, `terminal-window`
- Fixed corner radii in `video-camera`, `gauge-fill`
- Fixed optical alignment of `navigation-arrow`

#### Renames:

Some icon names were confusing or broke with convention and have been renamed. For backwards compatibility and ease of upgrade, existing names will continue to be available as aliases, though may be removed in future releases.

- Renamed `activity` to `pulse`
- Renamed `circle-wavy` to `seal`
- Renamed `circle-wavy-check` to `seal-check`
- Renamed `circle-wavy-question` to `seal-question`
- Renamed `circle-wavy-warning` to `seal-warning`
- Renamed `file-dotted` to `file-dashed`
- Renamed `file-search` to `file-magnifying-glass`
- Renamed `folder-dotted` to `folder-dashed`
- Renamed `folder-simple-dotted` to `folder-simple-dashed`
- Renamed `text-bolder` to `text-b`

### Related projects

Check out our plugins for popular design tools:

- [@phosphor-icons/figma](https://www.figma.com/community/plugin/898620911119764089/Phosphor-Icons) ▲ Phosphor plugin for Figma
- [@phosphor-icons/sketch](https://github.com/phosphor-icons/phosphor-sketch) ▲ Phosphor plugin for Sketch

For developers, please check out our framework-specific packages:

- [@phosphor-icons/homepage](https://github.com/phosphor-icons/homepage) ▲ Phosphor homepage and general info
- [@phosphor-icons/core](https://github.com/phosphor-icons/core) ▲ Phosphor icon assets and catalog
- [@phosphor-icons/react](https://github.com/phosphor-icons/react) ▲ Phosphor icon component library for React
- [@phosphor-icons/web](https://github.com/phosphor-icons/web) ▲ Phosphor icons for Vanilla JS
- [@phosphor-icons/vue](https://github.com/phosphor-icons/vue) ▲ Phosphor icon component library for Vue
- [@phosphor-icons/elm](https://github.com/phosphor-icons/phosphor-elm) ▲ Phosphor icons for Elm
- [@phosphor-icons/flutter](https://github.com/phosphor-icons/flutter) ▲ Phosphor IconData library for Flutter
- [@phosphor-icons/webcomponents](https://github.com/phosphor-icons/webcomponents) ▲ Phosphor icons as Web Components

## [1.4.0] - 2021/12/24

### New icons

This release adds 153 new icons to the family:

`alien`, `align-bottom-simple`, `align-center-horizontal-simple`, `align-center-vertical-simple`, `align-left-simple`, `align-right-simple`, `align-top-simple`, `angular-logo`, `app-store-logo`, `apple-podcasts-logo`, `arrows-horizontal`, `arrows-vertical`, `asterisk-simple`, `backpack`, `balloon`, `barricade`, `bathtub`, `battery-plus`, `beer-bottle`, `behance-logo`, `bezier-curve`, `binoculars`, `butterfly`, `cactus`, `camera-rotate`, `campfire`, `circle-notch`, `coat-hanger`, `codepen-logo`, `codesandbox-logo`, `coin-vertical`, `coins`, `confetti`, `copyleft`, `currency-eth`, `currency-kzt`, `currency-ngn`, `cursor-text`, `cylinder`, `detective`, `diamonds-four`, `drop-half-bottom`, `egg`, `egg-crack`, `equalizer`, `exam`, `eyedropper-sample`, `eyeglasses`, `file-audio`, `file-cloud`, `file-code`, `file-css`, `file-csv`, `file-doc`, `file-html`, `file-image`, `file-jpg`, `file-js`, `file-jsx`, `file-lock`, `file-png`, `file-ppt`, `file-rs`, `file-ts`, `file-tsx`, `file-video`, `file-vue`, `file-xls`, `file-zip`, `film-script`, `film-slate`, `flag-checkered`, `flying-saucer`, `folder-dotted`, `folder-lock`, `folder-star`, `folder-user`, `folder-simple-dotted`, `folder-simple-lock`, `folder-simple-star`, `folder-simple-user`, `function`, `google-chrome-logo`, `google-photos-logo`, `google-podcasts-logo`, `gradient`, `graph`, `hamburger`, `hand-eye`, `heart-break`, `heart-straight-break`, `kanban`, `keyhole`, `ladder`, `ladder-simple`, `linux-logo`, `list-checks`, `mask-happy`, `mask-sad`, `microphone-stage`, `microsoft-excel-logo`, `microsoft-powerpoint-logo`, `microsoft-teams-logo`, `microsoft-word-logo`, `mountains`, `music-notes-plus`, `needle`, `option`, `parachute`, `password`, `pencil-simple-line`, `perspective`, `piano-keys`, `pinwheel`, `plug`, `plugs`, `plugs-connected`, `police-car`, `popcorn`, `radio-button`, `rug`, `scan`, `scroll`, `shield-star`, `sidebar`, `sidebar-simple`, `signpost`, `skull`, `spiral`, `square-half-bottom`, `stack-overflow-logo`, `stamp`, `strategy`, `sunglasses`, `syringe`, `tabs`, `taxi`, `text-indent`, `text-outdent`, `textbox`, `toilet`, `trademark-registered`, `traffic-cone`, `traffic-signal`, `user-switch`, `vault`, `vignette`, `wave-sawtooth`, `wave-sine`, `wave-square`, `wave-triangle`, `webcam`, `yin-yang`

### Regressions

Due to limitations with our tools, our icon font no longer supports ligatures, for the time being. Use the unicode codepoints, or class names provided on our site if in a web context. We're looking for a solution to this, and hope to have one soon.

### Revisions

#### Notable changes:

- Redrew `film-strip` to be more readable
  <img width="306" alt="1 4-film-strip-change" src="https://user-images.githubusercontent.com/26732044/147204627-8fca8120-ff31-414f-b051-a800bbaa090c.png">

- Added one more line to `pencil` and `pencil-line` to push some contrast with the `pencil-simple` set; use `pencil-simple` for a more minimal approach
  <img width="306" alt="1 4-pencil-change" src="https://user-images.githubusercontent.com/26732044/147204661-01ca69e9-79bc-4385-8bb7-f8d32e5fd174.png">

- Adjusted dotted line to solid line for `star-half-fill` and `star-half-duotone`
  <img width="306" alt="1 4-star-half-change" src="https://user-images.githubusercontent.com/26732044/147204672-71a3afa2-c036-470b-a39b-4237b782fafc.png">

- Hatching approach reworked across `drop-half`, `circle-half`, `circle-half-tilt`, and `square-half`
  <img width="306" alt="1 4-hatching-change" src="https://user-images.githubusercontent.com/26732044/147204693-4400eb30-28ec-429a-abf0-ec1a3d50bdf1.png">

#### Micro enhancements:

- Adjusted `file-pdf` slightly as we expand the `file` set
- Softened sharp outer edges in handful of icons: `armchair-fill`, `dribbble-logo-fill`, `facebook-logo-fill`, `pinterest-logo-fill`, `briefcase-metal-fill`, `download-fill`, `upload-fill`, `airplay-fill`, `wall-fill`, `ruler-fill`, `baby-fill`, `cat-fill`, `gauge-fill`, `cloud-fog-fill`, `cloud-check-fill`, `cloud-arrow-up-fill`, `cloud-arrow-down-fill`, `cloud-lightning-fill`, `cloud-rain-fill`, `cloud-snow-fill`, `cloud-fill`, `paper-plane-fill`, `paper-plane-right-fill`, `paper-plane-tilt-fill`, `jeep-fill`, `at-fill`, `wifi-x-fill`, `cell-signal-x-fill`, `floppy-disk-back-fill`, `heartbeat-fill`, `baseball-fill`, `tennis-ball-fill`, `basketball-fill`

#### Visual bugs:

- Fixed `hands-clapping-fill` and `hands-clapping-duotone` to be the right weight
- Fixed a corner radius mistake in one corner of `pencil-simple`

#### Refactoring:

- Anchor points cleaned up in many icons
- Duplicate elements removed from `truck`, `key`, `hand`, `hand-palm`, and `hand-grabbing` sets
- Joined lines in `hand-pointing` set

### Related projects

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
