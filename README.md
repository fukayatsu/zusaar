# Zusaar
[![Build Status](https://travis-ci.org/fukayatsu/zusaar.png?branch=master)](https://travis-ci.org/fukayatsu/zusaar)

A Ruby interface to the Zusaar API. Inspired by Twitter gem.

[Zusaar API doc](http://www.zusaar.com/doc/api.html)

## Installation

Add this line to your application's Gemfile:

    gem 'zusaar'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install zusaar

## Usage

```
Zusaar.search_events(keyword: 'ruby')

Zusaar.search_users(nickname: 'fukayatsu')
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Add test for it
5. Push to the branch (`git push origin my-new-feature`)
6. Create new Pull Request
