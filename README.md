OmniAuth Dropbox
================

Usage
-----

Add the strategy to your `Gemfile` alongside OmniAuth:

```ruby
gem 'omniauth-dropbox-oauth2', :git => 'git://github.com/jonathantribouharet/omniauth-dropbox-oauth2.git'
```

Then integrate the strategy into your middleware:

```ruby
use OmniAuth::Builder do
  provider :dropbox_oauth2, ENV['DROPBOX_KEY'], ENV['DROPBOX_SECRET']
end
```

In Rails, you'll want to add to the middleware stack:

```ruby
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :dropbox_oauth2, ENV['DROPBOX_KEY'], ENV['DROPBOX_SECRET']
end
```