# Flash Message Conductor

A simple pattern for managing flash messages in your Ruby on Rails application.


## Example

### Controller helpers

```
  add_message('foo')
```

**Is the equivalent of:**

```
  flash[:message] = 'foo'
```

**Rails Controller helpers included:**

```
  add_message(message)
  add_notice(message)
  add_error(message)
```

### View helpers

```
  <%= render_flash_messages %>
```

**Produces:**

```
  <div id="flash_messages">
      <p class="message">You have successfully done XYZ...</p>
  </div>
```

**Or... if you set an error:**

```
  <div id="flash_messages">
      <p class="error">Oops! Something went bonkers!<p>
  </div>
```

**Or:**

```
  <% if flash_message_set? -%>
    # do something
  <% end -%>
```

Copyright (c) 2012 Planet Argon, released under the MIT license