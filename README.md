# Soundbot

collect, tag, organize, group, search, select, modify, export sound files

create groups based on "emotional response"

select 5 files, label them "ominous". the characteristics from the selected 5 files will hen be cross-referenced and other sounds matching similar characteristics will be tagged as "ominous" as well.

import sound files from various locations
once file metadata is collected, sounds can be grouped together or searched by various criteria

```bash
soundbot search "acoustic percussion"
```

would return anything either named or tagged with 'percussion', 'snare', 'pitched', etc

```bash
soundbot search "c major"
```

might return anything that has a root key in the scale of c major

preview the sounds produced with a search and if desired, select items to be exported

export as;
 - group of flacs (or playlist)
 - sfz
 - h2drumkit




configure some system settings

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'soundbot'
```

And then execute:

```bash
$ bundle install
```
Or install it yourself as:

```bash
$ gem install soundbot
```





## Usage

TODO: Write usage instructions here

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).


## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/syncopatedstudios/soundbot.git.




## Code of Conduct

I thought this would be obvious in this, realm, having said that I do agree with the principles and gem already put this here so;

This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/syncopatedstudios/soundbot/blob/master/CODE_OF_CONDUCT.md).
