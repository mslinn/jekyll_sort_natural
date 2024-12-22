require_relative 'lib/jekyll_sort_natural/version'

Gem::Specification.new do |spec|
  github = 'https://github.com/mslinn/jekyll_sort_natural'

  spec.bindir   = 'exe'
  spec.authors  = ['Mike Slinn']
  spec.email    = ['mslinn@mslinn.com']
  spec.files    = Dir['.rubocop.yml', 'LICENSE.*', 'Rakefile', '{lib,spec}/**/*', '*.gemspec', '*.md']
  spec.homepage = 'https://www.mslinn.com/jekyll_plugins/jekyll_sort_natural.html'
  spec.license  = 'MIT'
  spec.metadata = {
    'allowed_push_host' => 'https://rubygems.org',
    'bug_tracker_uri'   => "#{github}/issues",
    'changelog_uri'     => "#{github}/CHANGELOG.md",
    'homepage_uri'      => spec.homepage,
    'source_code_uri'   => github,
  }
  spec.name                 = 'jekyll_sort_natural'
  spec.platform             = Gem::Platform::RUBY
  spec.post_install_message = <<~END_MESSAGE

    Thanks for installing #{spec.name}!

  END_MESSAGE
  spec.post_install_message = <<~END_MESSAGE

    Thanks for installing #{spec.name}!

  END_MESSAGE
  spec.require_paths         = ['lib']
  spec.required_ruby_version = '>= 2.6.0'
  spec.summary               = 'Provides a Jekyll filter that provides case-insensitive hash key sorting.'
  spec.test_files            = spec.files.grep(%r!^(test|spec|features)/!)
  spec.version               = JekyllSortNaturalVersion::VERSION

  spec.add_dependency 'jekyll', '>= 3.5.0'
  spec.add_dependency 'jekyll_plugin_logger'
end
