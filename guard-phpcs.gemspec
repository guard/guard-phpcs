# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "guard/phpcs"

Gem::Specification.new do |s|
  s.name        = "guard-phpcs"
  s.version     = Guard::PHPCS::VERSION
  s.authors     = ["Patrik Henningsson"]
  s.email       = ["patrik.henningsson@gmail.com"]
  s.homepage    = "http://github.com/pahen/guard-phpcs"
  s.summary     = "Guard gem for running PHPCS"
  s.description = "Guard::PHPCS automatically runs PHP Code Sniffer when watched files are modified."

  s.rubyforge_project = "guard-phpcs"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency 'guard', '>= 0.8.8'
end