`jekyll_sort_natural`
[![Gem Version](https://badge.fury.io/rb/jekyll_sort_natural.svg)](https://badge.fury.io/rb/jekyll_sort_natural)
===========

`jekyll_sort_natural` is a Jekyll plugin that sorts hashes using `String#casecmp`, the case-insensitive version of `String#<=>`.

This plugin contains code modified from [tkrotoff](https://github.com/tkrotoff/osteo15.com/blob/b0c8bf66a75fe8b52ef38d94e5f5e1c9469c1957/_plugins/filters.rb#L13-L18).

By default, `Enumerable#sort` uses `<=>` for comparisons

See [Add sort_natural to jekyll/filters.rb](https://github.com/jekyll/jekyll/issues/6290).
This plugin overrides [`sort_natural`](https://shopify.github.io/liquid/filters/sort_natural/) provided by Liquid 4.


## Installation

Add this line to your Jekyll project's Gemfile, within the `jekyll_plugins` group:

```ruby
group :jekyll_plugins do
  gem 'jekyll_sort_natural'
end
```

And then execute:

    $ bundle 


## Additional Information
More information is available on
[Mike Slinn&rsquo;s website](https://www.mslinn.com/jekyll_plugins/jekyll_sort_natural.html).


## Development

After checking out the repo, run `bin/setup` to install dependencies.

You can also run `bin/console` for an interactive prompt that will allow you to experiment.


To build and install this gem onto your local machine, run:
```shell
$ bundle exec rake install
jekyll_sort_natural 1.0.0 built to pkg/jekyll_sort_natural-0.1.0.gem.
jekyll_sort_natural (1.0.0) installed.
```

Examine the newly built gem:
```shell
$ gem info jekyll_sort_natural

*** LOCAL GEMS ***

jekyll_sort_natural (1.0.0)
    Author: Mike Slinn
    Homepage:
    https://github.com/mslinn/jekyll_sort_natural
    License: MIT
    Installed at: /home/mslinn/.gems

    Generates Jekyll logger with colored output.
```


### Build and Push to RubyGems
To release a new version,
  1. Update the version number in `version.rb`.
  2. Commit all changes to git; if you don't the next step might fail with an unexplainable error message.
  3. Run the following:
     ```shell
     $ bundle exec rake release
     ```
     The above creates a git tag for the version, commits the created tag,
     and pushes the new `.gem` file to [RubyGems.org](https://rubygems.org).


## Contributing

1. Fork the project
2. Create a descriptively named feature branch
3. Add your feature
4. Submit a pull request


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
