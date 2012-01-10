# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "verizon/version"

Gem::Specification.new do |s|
  s.name        = "verizon"
  s.version     = Verizon::VERSION
  s.authors     = ["Michael Guterl"]
  s.email       = ["michael@diminishing.org"]
  s.homepage    = ""
  s.summary     = %q{Ruby API wrapper for jobs at Verizon}
  s.description = %q{Ruby API wrapper for jobs at Verizon, uses Nokogiri for scraping}

  s.rubyforge_project = "verizon"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_runtime_dependency "nokogiri"

  s.add_development_dependency "rspec"
  s.add_development_dependency "vcr"
  s.add_development_dependency "webmock"
end
