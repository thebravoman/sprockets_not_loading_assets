Sprockets with an engine in rails4 is behaving differently than sprockets with engine in rails 5

In rails 5 if there is an engine only the assets paths of the engine are loaded. The engine is refinerycms.

There are three branches in the project

  rails4
  rails5_without_engine
  rails5_with_engine

In rails4 you do

```
bundle install
rails s
```
and go to localhost:3000

These are the paths shown and they contain the assets of the app itself

```
/home/kireto/.rvm/gems/ruby-2.2.2/gems/speakingurl-rails-8.0.2/lib

/home/kireto/robopartans/reduco/sprockets_broken/app/assets/fonts

/home/kireto/robopartans/reduco/sprockets_broken/app/assets/images

/home/kireto/robopartans/reduco/sprockets_broken/app/assets/javascripts

/home/kireto/robopartans/reduco/sprockets_broken/app/assets/stylesheets

/home/kireto/.rvm/gems/ruby-2.2.2/gems/refinerycms-wymeditor-1.1.0/app/assets/images

/home/kireto/.rvm/gems/ruby-2.2.2/gems/refinerycms-wymeditor-1.1.0/app/assets/javascripts

/home/kireto/.rvm/gems/ruby-2.2.2/gems/refinerycms-wymeditor-1.1.0/app/assets/stylesheets

/home/kireto/.rvm/gems/ruby-2.2.2/gems/jquery-ui-rails-5.0.5/app/assets/images

/home/kireto/.rvm/gems/ruby-2.2.2/gems/jquery-ui-rails-5.0.5/app/assets/javascripts

/home/kireto/.rvm/gems/ruby-2.2.2/gems/jquery-ui-rails-5.0.5/app/assets/stylesheets

/home/kireto/.rvm/gems/ruby-2.2.2/gems/jquery-rails-4.2.2/vendor/assets/javascripts

/home/kireto/.rvm/gems/ruby-2.2.2/gems/refinerycms-core-3.0.5/app/assets/images

/home/kireto/.rvm/gems/ruby-2.2.2/gems/refinerycms-core-3.0.5/app/assets/javascripts

/home/kireto/.rvm/gems/ruby-2.2.2/gems/refinerycms-core-3.0.5/app/assets/stylesheets

/home/kireto/.rvm/gems/ruby-2.2.2/gems/refinerycms-core-3.0.5/vendor/assets/javascripts

/home/kireto/.rvm/gems/ruby-2.2.2/gems/refinerycms-i18n-3.0.1/app/assets/images

/home/kireto/.rvm/gems/ruby-2.2.2/gems/coffee-rails-4.2.1/lib/assets/javascripts

/home/kireto/.rvm/gems/ruby-2.2.2/bundler/gems/bootstrap-sass-5d6b2ebba0c2/assets/stylesheets

/home/kireto/.rvm/gems/ruby-2.2.2/bundler/gems/bootstrap-sass-5d6b2ebba0c2/assets/javascripts

/home/kireto/.rvm/gems/ruby-2.2.2/bundler/gems/bootstrap-sass-5d6b2ebba0c2/assets/fonts

/home/kireto/.rvm/gems/ruby-2.2.2/bundler/gems/bootstrap-sass-5d6b2ebba0c2/assets/images

/home/kireto/.rvm/gems/ruby-2.2.2/gems/font-awesome-sass-4.7.0/assets/stylesheets

/home/kireto/.rvm/gems/ruby-2.2.2/gems/font-awesome-sass-4.7.0/assets/fonts
```

Among the other paths are also the paths of the app - sprockets_broken/app... The refinerycms-core paths are also loaded.

Checkout rails5_without_engine and again

```
bundle install
rails s
```
The paths are:

```
/home/kireto/robopartans/reduco/sprockets_broken/app/assets/fonts

/home/kireto/robopartans/reduco/sprockets_broken/app/assets/images

/home/kireto/robopartans/reduco/sprockets_broken/app/assets/javascripts

/home/kireto/robopartans/reduco/sprockets_broken/app/assets/stylesheets

/home/kireto/.rvm/gems/ruby-2.2.2/gems/coffee-rails-4.2.1/lib/assets/javascripts

/home/kireto/.rvm/gems/ruby-2.2.2/gems/actioncable-5.0.0/lib/assets/compiled

/home/kireto/.rvm/gems/ruby-2.2.2/bundler/gems/bootstrap-sass-5d6b2ebba0c2/assets/stylesheets

/home/kireto/.rvm/gems/ruby-2.2.2/bundler/gems/bootstrap-sass-5d6b2ebba0c2/assets/javascripts

/home/kireto/.rvm/gems/ruby-2.2.2/bundler/gems/bootstrap-sass-5d6b2ebba0c2/assets/fonts

/home/kireto/.rvm/gems/ruby-2.2.2/bundler/gems/bootstrap-sass-5d6b2ebba0c2/assets/images
```

The paths starting with sprocket_broken/app... are here. There are not refinerycms paths because the engine is not enabled.

Checkout rails5_with_engine

```
bundle install
rails s
```
The paths are :

```
/home/kireto/.rvm/gems/ruby-2.2.2/gems/speakingurl-rails-8.0.2/lib

/home/kireto/.rvm/gems/ruby-2.2.2/bundler/gems/refinerycms-f8a1152f9d25/core/app/assets/fonts

/home/kireto/.rvm/gems/ruby-2.2.2/bundler/gems/refinerycms-f8a1152f9d25/core/app/assets/images

/home/kireto/.rvm/gems/ruby-2.2.2/bundler/gems/refinerycms-f8a1152f9d25/core/app/assets/javascripts

/home/kireto/.rvm/gems/ruby-2.2.2/bundler/gems/refinerycms-f8a1152f9d25/core/app/assets/stylesheets

/home/kireto/.rvm/gems/ruby-2.2.2/bundler/gems/refinerycms-f8a1152f9d25/core/vendor/assets/javascripts

/home/kireto/.rvm/gems/ruby-2.2.2/bundler/gems/refinerycms-i18n-727bdc58c307/app/assets/images

/home/kireto/.rvm/gems/ruby-2.2.2/gems/jquery-ui-rails-5.0.5/app/assets/images

/home/kireto/.rvm/gems/ruby-2.2.2/gems/jquery-ui-rails-5.0.5/app/assets/javascripts

/home/kireto/.rvm/gems/ruby-2.2.2/gems/jquery-ui-rails-5.0.5/app/assets/stylesheets

/home/kireto/.rvm/gems/ruby-2.2.2/gems/jquery-rails-4.2.2/vendor/assets/javascripts

/home/kireto/.rvm/gems/ruby-2.2.2/gems/coffee-rails-4.2.1/lib/assets/javascripts

/home/kireto/.rvm/gems/ruby-2.2.2/gems/actioncable-5.0.0/lib/assets/compiled

/home/kireto/.rvm/gems/ruby-2.2.2/bundler/gems/bootstrap-sass-5d6b2ebba0c2/assets/stylesheets

/home/kireto/.rvm/gems/ruby-2.2.2/bundler/gems/bootstrap-sass-5d6b2ebba0c2/assets/javascripts

/home/kireto/.rvm/gems/ruby-2.2.2/bundler/gems/bootstrap-sass-5d6b2ebba0c2/assets/fonts

/home/kireto/.rvm/gems/ruby-2.2.2/bundler/gems/bootstrap-sass-5d6b2ebba0c2/assets/images

/home/kireto/.rvm/gems/ruby-2.2.2/bundler/gems/bootstrap-sass-5d6b2ebba0c2/assets/stylesheets

/home/kireto/.rvm/gems/ruby-2.2.2/bundler/gems/bootstrap-sass-5d6b2ebba0c2/assets/javascripts

/home/kireto/.rvm/gems/ruby-2.2.2/gems/font-awesome-sass-4.7.0/assets/stylesheets

/home/kireto/.rvm/gems/ruby-2.2.2/gems/font-awesome-sass-4.7.0/assets/fonts
```
The refinery paths are loaded but the sprockets_broken paths are not loaded and they should be.
