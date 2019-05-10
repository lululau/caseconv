# Caseconv

Convert string case between lower, upper, cammel, snake, kebab cases.

## Installation

Install it yourself as:

    $ gem install caseconv

Or:

    $ sudo gem install caseconv

## Usage

```
Commands:
  caseconv -c, --case=CASE  # convert text to specified cases, available cases: down, up, snake, camel(with first letter be lower case), Camel, kebab
  caseconv help [COMMAND]   # Describe available commands or one specific command
```

For example, execute:

```
echo hello_world | caseconv -c Camel
```

will print out:

```
HelloWorld
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/lululau/caseconv. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Caseconv project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/lululau/caseconv/blob/master/CODE_OF_CONDUCT.md).
