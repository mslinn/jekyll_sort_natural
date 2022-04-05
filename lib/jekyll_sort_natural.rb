# frozen_string_literal: true

require "jekyll"
require "jekyll_plugin_logger"
require_relative "jekyll_sort_natural/version"

module Jekyll
  module SortNatural
    # Sort a hash using String#casecmp the case-insensitive version of String#<=>
    # Modified from https://github.com/tkrotoff/osteo15.com/blob/b0c8bf66a75fe8b52ef38d94e5f5e1c9469c1957/_plugins/filters.rb#L13-L18
    # By default, Enumerable#sort uses <=>
    # See Add sort_natural to jekyll/filters.rb https://github.com/jekyll/jekyll/issues/6290
    # This overrides sort_natural provided by Liquid 4 (https://shopify.github.io/liquid/filters/sort_natural/)
    def sort_natural(input)
      input.sort { |a, b| a.first.casecmp(b.first) }
    end
  end
end

PluginMetaLogger.instance.info { "Loaded jekyll_sort_natural v#{JekyllSortNaturalVersion::VERSION} plugin." }
Liquid::Template.register_filter(Jekyll::SortNatural)
