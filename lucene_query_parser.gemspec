# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "lucene_query_parser/version"

Gem::Specification.new do |s|
  s.name        = "lucene_query_parser"
  s.version     = LuceneQueryParser::VERSION
  s.authors     = ["Nathan Witmer", "Eric Mill"]
  s.email       = ["nwitmer@gmail.com", "eric@sunlightfoundation.com"]
  s.homepage    = "https://github.com/sunlightlabs/lucene_query_parser"
  s.summary     = %q{Lucene query parser and syntax checker}
  s.description = %q{Parser class and syntax checking script for validating Lucene queries}

  s.rubyforge_project = "lucene_query_parser"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_runtime_dependency "parslet"
  s.add_runtime_dependency "rainbow"
  s.add_development_dependency "rspec", "~> 2.5.0"
end
