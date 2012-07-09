SpreeImageCropper
=================

Installation
------------

add this to your `Gemfile`
```ruby
gem "spree_image_cropper", :git => "spree_image_cropper"
```

then run:

    $ bundle install
    $ bundle exec rails generate spree_image_cropper:install


Add this to the `config/initializers/spree.rb`

```ruby
Spree::Image.attachment_definitions[:attachment][:styles][:crop] = '600x600>'
```

If you need to change the default Spree Image styles you can override them as well by redefining the styles hash like this:

```ruby
Spree::Image.attachment_definitions[:attachment][:styles] = {
  :mini => '48x48>',
  :small => '200x200>',
  :product => '400x360>',
  :large => 'x800',
  :crop => "600x600>"
}
```

Testing
-------

Be sure to bundle your dependencies and then create a dummy test app for the specs to run against.

    $ bundle
    $ bundle exec rake test_app
    $ bundle exec rspec spec

Copyright (c) 2012 PeRo ICT Solutions, released under the New BSD License
