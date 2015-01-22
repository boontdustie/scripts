#!/usr/bin/env ruby

gems = %w{ rails }

opml = %Q{<?xml version="1.0" encoding="UTF-8"?>}
opml << %Q{<!-- OPML generated by ruby_gem_feed.rb -->}
opml << %Q{<!-- <opml version="1.1"> -->}
opml << %Q{<!-- <head><title>mySubscriptions</title></head><body> -->}
opml << %Q{<outline text="GEMS" title="GEMS">}
gems.each do |gem|
  # RubyGems feed url: https://rubygems.org/gems/#{gem}/versions.atom
  opml << %Q{<outline text="#{gem}" title="#{gem}" type="rss" version="RSS" htmlUrl="https://rubygems.org/gems/#{gem}" xmlUrl="https://rubygems.org/gems/#{gem}/versions.atom"/>}
end
opml << %Q{</outline></body></opml>}
File.open("gem-feeds.opml", 'w') {|f| f.write(opml) }

