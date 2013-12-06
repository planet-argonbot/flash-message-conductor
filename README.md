# Flash Message Conductor

A simple pattern for managing flash messages in your Ruby on Rails application.

## Installation

***This branch is only used for Rails 3. Still using Rails 2? Use [https://github.com/planetargon/flash-message-conductor/tree/rails2](https://github.com/planetargon/flash-message-conductor/tree/rails2) instead.***

Add this line to your application's Gemfile:

```ruby
gem "flash-message-conductor", "~> 2.0.1"
```

And then execute:

    $ bundle

Or install it yourself as:

    gem install flash-message-conductor

## Usage

### Controller helpers

```ruby
  add_message('foo')
```

**Is the equivalent of:**

```ruby
  flash[:message] = 'foo'
```
**Flash methods Keep, discard, and now are also supported**

```ruby
  add_message('foo', :state => :keep)
```

**Is the equivalent of:**

```ruby
  flash[:message] = 'foo'
  flash.keep(:message)
```

**Rails Controller helpers included:**

```ruby
  add_message(message)
  add_notice(message)
  add_error(message)
  add_alert(message)
```

### View helpers

```erb
  <%= render_flash_messages %>
```

**Produces:**

```html
  <div id="flash_messages">
      <p class="message">You have successfully done XYZ...</p>
  </div>
```

**Or... if you set an error:**

```html
  <div id="flash_messages">
      <p class="error">Oops! Something went bonkers!<p>
  </div>
```

**Or:**

```erb
  <% if flash_message_set? -%>
    # do something
  <% end -%>
```

Copyright (c) 2008-2013 Planet Argon, released under the MIT license

### Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
