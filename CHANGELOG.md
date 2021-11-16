# CHANGELOG

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
