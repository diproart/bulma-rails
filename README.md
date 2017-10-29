# bulma-rails

Integrates [Bulma](http://bulma.io/) with the rails asset pipeline.

A modern CSS framework based on Flexbox.

## Installation

Add this line to your application's Gemfile:

    gem "bulma-rails", github: "diproart/bulma-rails"

And then execute:

    $ bundle

## What diffrent from original?

+ bulma-extentions
+ move libs to `vendor/assets/*`

## Usage

To import all assets in your Rails project, add the following line to your `application.scss`:

``` ruby
@import "bulma";
```

Preferred SASS syntax

```ruby
config.sass.preferred_syntax = :sass
```

## Styles logic

```bash
- app/
  - assets/
  - stylesheets/
    _common.sass
    _vars.sass
    application.sass
    project.sass
```

Rename `application.css` to `application.sass`

```css
/**
 *= require project
 */
```

Create `project.sass` and `app/assets/stylesheets/_vars.sass` files.

```sass
// _vars.sass

// import initial
@import "bulma/sass/utilities/initial-variables"

// setup projects colors
$green: #46a932
$blue: #499bea
$border-color: #e1e1e1
$gray: #f5f5f5
$grey-dark: #333333

// overwrite default bulma vars
$primary: $blue
$success: $green
$danger: #d80000
```

main project style `app/assets/stylesheets/project.sass`

```sass
// project variables
@import 'vars'
// bulma core
@import 'bulma/bulma'

// all bulma extenstions
// @import 'bulma-extensions/extensions'

// or one by one
// @import 'bulma-extensions/bulma-badge/bulma-badge'
// @import 'bulma-extensions/bulma-divider/bulma-divider'
// @import 'bulma-extensions/bulma-quickview/bulma-quickview'
// @import 'bulma-extensions/bulma-steps/bulma-steps'
// @import 'bulma-extensions/bulma-tooltip/bulma-tooltip'
// @import 'bulma-extensions/bulma-calendar/bulma-calendar'
// @import 'bulma-extensions/bulma-pageloader/bulma-pageloader'
// @import 'bulma-extensions/bulma-ribbon/bulma-ribbon'
// @import 'bulma-extensions/bulma-switch/bulma-switch'
// @import 'bulma-extensions/bulma-checkradio/bulma-checkradio'
// @import 'bulma-extensions/bulma-pricingtable/bulma-pricingtable'
// @import 'bulma-extensions/bulma-slider/bulma-slider'
// @import 'bulma-extensions/bulma-timeline/bulma-timeline'

// import other project styles
// app/assets/stylesheets/_common.sass
// @import 'common'
// app/assets/stylesheets/_footer.sass
// @import 'footer'
// app/assets/stylesheets/_nav.sass
// @import 'nav'
```


For information about customizing Bulma,
see: [http://bulma.io/documentation/overview/start/](http://bulma.io/documentation/overview/start/)

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
