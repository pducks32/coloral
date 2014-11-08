# Coloral
[![Gem Version](https://badge.fury.io/rb/coloral.svg)](http://badge.fury.io/rb/coloral)
[![Build Status](https://travis-ci.org/pducks32/coloral.svg?branch=master)](https://travis-ci.org/pducks32/coloral)
[![Code Climate](https://codeclimate.com/github/pducks32/coloral/badges/gpa.svg)](https://codeclimate.com/github/pducks32/coloral)
[![Test Coverage](https://codeclimate.com/github/pducks32/coloral/badges/coverage.svg)](https://codeclimate.com/github/pducks32/coloral)

A library to manipulate colors. If you have ever worked with colors before in Sass or a photo-editing program then you'll fit right in! RGB, HSV, HSL, and Hex are all supported with more on the way. You can manipulate colors' alpha, saturation, brightness, hue, etc. in an easy and intuitive way.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'coloral'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install coloral

## Usage
Below is the basic API for using `Coloral` with RGB and all other plugins follow a identical format substituting `rgb`. In addition to RGB `Coloral` also supports

* RGB
* HSL
* Hex
* HSB/HSV
* *and many more comming soon*

```ruby
require 'coloral'
Coloral.from_rgb 250, 75, 119 # Also supports array
Coloral.from_rgb red: 250, green: 75, blue: 119 # Also supports hash input
my_color = Coloral.from_rgb 250, 75, 119 #=> #<Coloral::Color @hue=345, @saturation=95, @lightness=64>
my_color.to_hex #=> "#F94A77"
my_color.to_css_rgb #=> "rgb(250, 75, 119)"s

```

## Contributing

1. Fork it ( https://github.com/pducks/coloral/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
