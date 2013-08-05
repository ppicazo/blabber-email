Blabber-Email
===

Blabber-Email is a channel for [Blabber](https://github.com/ppicazo/blabber) that will send messages to email.

## Installation

```
$ gem install blabber-email
```

## Example

```ruby
require "blabber"
require "blabber/email"

all_standard_loglevels = ['INFO', 'WARN', 'ERROR', 'DEBUG']

blabber = Blabber::Blabber.new([
  {'channel' => 'Blabber::Console', 'loglevels' => all_standard_loglevels},
  {'channel' => 'Blabber::Email',
      'from' => 'sender@example.com',
      'to' => 'test@example.com',
      'address' => 'smtp.example.com',
      'port' => 123, 
      'loglevels' => ['INFO', 'WARN', 'ERROR', 'DEBUG', 'EMAIL']
  }])

blabber.debug("debug msg")
blabber.info("info msg")
blabber.error("error msg")
blabber.warn("warn msg")
blabber.debug("multiline\nmessage")
blabber.email("just to email")
blabber.email("just to email too", {'subject' => "Specific Subject"})
```

