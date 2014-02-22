# encoding: utf-8

$LOAD_PATH.unshift(File.expand_path('../lib/', __FILE__))
require 'nanoc/plugin_template/version'

Gem::Specification.new do |s|
  s.name        = 'nanoc-plugin_template'
  s.version     = Nanoc::PluginTemplate::VERSION
  s.homepage    = 'http://nanoc.ws/'
  s.summary     = 'Plugin template for nanoc'
  s.description = 'Provides an :plugin_template filter for nanoc'

  s.author  = 'Denis Defreyne'
  s.email   = 'denis.defreyne@stoneship.org'
  s.license = 'MIT'

  s.required_ruby_version = '>= 1.9.3'

  s.files              = Dir['[A-Z]*'] +
                         Dir['{lib,test}/**/*'] +
                         [ 'nanoc-plugin_template.gemspec' ]
  s.require_paths      = [ 'lib' ]

  s.rdoc_options     = [ '--main', 'README.md' ]
  s.extra_rdoc_files = [ 'LICENSE', 'README.md', 'NEWS.md' ]

  s.add_runtime_dependency('nanoc', '>= 3.6.7', '< 4.0.0')
  s.add_development_dependency('bundler')
end
