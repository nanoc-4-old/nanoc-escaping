[![Build Status](https://travis-ci.org/nanoc/nanoc-escaping.png)](https://travis-ci.org/nanoc/nanoc-escaping)
[![Code Climate](https://codeclimate.com/github/nanoc/nanoc-escaping.png)](https://codeclimate.com/github/nanoc/nanoc-escaping)
[![Coverage Status](https://coveralls.io/repos/nanoc/nanoc-escaping/badge.png?branch=master)](https://coveralls.io/r/nanoc/nanoc-escaping)

# nanoc-escaping

This provides functionality for escaping for [nanoc](http://nanoc.ws).

## Installation

`gem install nanoc-escaping`

## Usage

### `html_escape(string)`

Returns a HTML-escaped version of `string`. `<`, `&`, `>` and `"` will be escaped.

`h` is a short form of `html_escape`, so `h(string)` will work as well.

### `html_escape do … end`

For use with ERB, Erubis and Haml. HTML-escapes anything that is added to the output buffer while in the block.

`h` is a short form of `html_escape`, so `h do … end` will work as well.
