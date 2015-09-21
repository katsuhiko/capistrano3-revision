# Capistrano3::Revision

Write current revision to file for capistrano3

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'capistrano3-revision', :git => 'https://github.com/katsuhiko/capistrano3-revision.git'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install capistrano3-revision

## Usage

In Capfile:

```ruby
require 'capistrano3/revision'
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bundle exec rspec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/katsuhiko/capistrano3-revision. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

