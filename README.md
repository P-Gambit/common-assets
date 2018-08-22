## Installation

Please see the appropriate guide for your environment of choice:

* [Ruby on Rails](#a-ruby-on-rails).

### a. Ruby on Rails

`common_assets` is easy to drop into Rails with the asset pipeline.

In your Gemfile you need to add the `common_assets` gem, and ensure that the `sass-rails` gem is present - it is added to new Rails applications by default.

```ruby
gem 'common_assets', github: 'P-Gambit/common_assets'
```

`bundle install` and restart your server to make the files available through the pipeline.

Import styles in `app/assets/stylesheets/application.scss`:

```scss
@import "common";
```

`common` must be imported before other assets.

Make sure the file has `.scss` extension (or `.sass` for Sass syntax). If you have just generated a new Rails app,
it may come with a `.css` file instead. If this file exists, it will be served instead of Sass, so rename it:

```console
$ mv app/assets/stylesheets/application.css app/assets/stylesheets/application.scss
```

Then, remove all the `*= require_self` and `*= require_tree .` statements from the sass file. Instead, use `@import` to import Sass files.

Do not use `*= require` in Sass or your other stylesheets will not be [able to access][antirequire] the COMMON mixins or variables.


Require Bootstrap Javascripts in `app/assets/javascripts/application.js`:

```js
//= require jquery
//= require common
```
