# Soundbot: deadsampler

Aiming to be a some sort of sound related thing....can't focus.

sorting, stitching, sampling, sequencing...

* browse library of sounds, by various criteria
  - related complementary frequencies
  - keys/scales/chords
  - volume/tempo
  - duration
  - intrsument class
    - percussion
    - strings
    - etc
  - %

* assemble soundfonts/drumkits/sample_packs

% = ideally, using essentia with their fancy models, be able to classify
sounds based on subjective concepts of mood

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'soundbot'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install soundbot


### Database setup

bundle exec rake db:create_migration[create_sounds]

bundle exec rake db:migrate

## Usage

TODO: Write usage instructions here

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/soundbot. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/soundbot/blob/master/CODE_OF_CONDUCT.md).


## Code of Conduct

Everyone interacting in the Soundbot project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/soundbot/blob/master/CODE_OF_CONDUCT.md).

## Copyright

Copyright (c) 2020 syncopated studios. See [MIT License](LICENSE.txt) for further details.
