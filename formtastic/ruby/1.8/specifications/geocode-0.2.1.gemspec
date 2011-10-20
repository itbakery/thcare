# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "geocode"
  s.version = "0.2.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["David Brady"]
  s.date = "2010-09-14"
  s.description = "geocode, a ruby library and command-line tool for geocoding addresses and reverse geocoding coordinates."
  s.email = "github@shinybit.com"
  s.executables = ["geocode"]
  s.extra_rdoc_files = ["README.rdoc", "MIT-LICENSE", "CHANGELOG.rdoc"]
  s.files = ["bin/geocode", "README.rdoc", "MIT-LICENSE", "CHANGELOG.rdoc"]
  s.homepage = "http://github.com/dbrady/geocode/"
  s.rdoc_options = ["--line-numbers", "--inline-source", "--main", "README.rdoc", "--title", "geocode"]
  s.require_paths = ["lib"]
  s.rubygems_version = "1.7.2"
  s.summary = "Geocoding library and CLI tool"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<trollop>, [">= 0"])
      s.add_runtime_dependency(%q<json>, [">= 0"])
    else
      s.add_dependency(%q<trollop>, [">= 0"])
      s.add_dependency(%q<json>, [">= 0"])
    end
  else
    s.add_dependency(%q<trollop>, [">= 0"])
    s.add_dependency(%q<json>, [">= 0"])
  end
end
