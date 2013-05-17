# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
# $LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
# require 'toadstool'

Gem::Specification.new do |s|
  # Release Specific Information
  s.version = "0.0.1"
  s.date = "2013-05-04"

  # Gem Details
  s.name = "toadstool"
  s.authors = ["Dale Sande", "Jed Foster"]
  s.summary = %q{Toadstool styleguide app}
  s.description = %q{Toadstool styleguide app.}
  s.email = "dale.sande@gmail.com"
  s.homepage = "https://github.com/Anotheruiguy/toadstool"

  # Gem Files
  s.bindir      = 'lib/bin'
  
  s.files = Dir["{app,lib,vendor/assets}/**/*"] + ["Rakefile"]
  
  s.executables   = s.files.grep(%r{^bin/}) { |f| File.basename(f) }
  # s.executables        = ['toadstool']
  
  s.require_paths = ["lib"]

  # Gem Bookkeeping
  s.rubygems_version = %q{1.3.6}
  s.add_dependency('rails', ['~> 3.2.13'])
  # s.add_dependency("thor")
  # s.add_dependency("compass", [">= 0.12"])
  # s.add_dependency("sass", [">=3.2.1"])
  s.add_dependency("stipe", ["~> 0.0.5"])
    s.add_dependency("haml-rails")
    s.add_dependency('rdiscount', ["~> 1.6.8"])
  
end
