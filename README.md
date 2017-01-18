# DigNestedHash

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/dig_nested_hash`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'dig_nested_hash'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install dig_nested_hash

## Usage

`swap_nested_value(key, value)` can replace value in nested hash.

```rb
require 'dig_nested_hash'

hash = { ruby: 1, java: { scala: 2, python: [golang: { ruby: 3, perl: 4 }, ruby: 5] } }
p hash.swap_nested_value(:ruby, 10)
# => { { ruby: 10, java: { scala: 2, python: [golang: { ruby: 10, perl: 4 }, ruby: 10] } } }
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/dig_nested_hash. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
