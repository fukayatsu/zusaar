# Zussar

A Ruby interface to the Zussar API. Inspired by Twitter gem.

[Zusaar API doc](http://www.zusaar.com/doc/api.html)

## Installation

Add this line to your application's Gemfile:

    gem 'zussar'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install zussar

## Usage

```
Zussar.search_events(keyword: 'ruby')

Zussar.search_users(nickname: 'fukayatsu')
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
