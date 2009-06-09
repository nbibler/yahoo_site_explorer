# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{yahoo_site_explorer}
  s.version = "0.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Nathaniel Bibler"]
  s.date = %q{2009-06-09}
  s.email = %q{gem@nathanielbibler.com}
  s.extra_rdoc_files = [
    "LICENSE",
     "README.rdoc"
  ]
  s.files = [
    ".document",
     ".gitignore",
     "LICENSE",
     "README.rdoc",
     "Rakefile",
     "VERSION.yml",
     "lib/yahoo_site_explorer.rb",
     "lib/yahoo_site_explorer/api.rb",
     "lib/yahoo_site_explorer/backlinks.rb",
     "lib/yahoo_site_explorer/page_data.rb",
     "lib/yahoo_site_explorer/result.rb",
     "lib/yahoo_site_explorer/results_container.rb",
     "test/integrations/yahoo_site_explorer_test.rb",
     "test/mocks/inlink_data.rb",
     "test/mocks/page_data.rb",
     "test/test_helper.rb",
     "test/units/inlink_data_test.rb",
     "test/units/page_data_test.rb",
     "yahoo_site_explorer.gemspec"
  ]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/nbibler/yahoo_site_explorer}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{site-explorer}
  s.rubygems_version = %q{1.3.2}
  s.summary = %q{Ruby interface to the Yahoo! Site Explorer REST API}
  s.test_files = [
    "test/integrations/yahoo_site_explorer_test.rb",
     "test/mocks/inlink_data.rb",
     "test/mocks/page_data.rb",
     "test/test_helper.rb",
     "test/units/inlink_data_test.rb",
     "test/units/page_data_test.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<relax>, ["~> 0.1.1"])
      s.add_development_dependency(%q<jeweler>, ["~> 0.11.0"])
      s.add_development_dependency(%q<mocha>, ["~> 0.9.5"])
      s.add_development_dependency(%q<thoughtbot-shoulda>, ["~> 2.10.1"])
      s.add_development_dependency(%q<fakeweb>, ["~> 1.2.2"])
    else
      s.add_dependency(%q<relax>, ["~> 0.1.1"])
      s.add_dependency(%q<jeweler>, ["~> 0.11.0"])
      s.add_dependency(%q<mocha>, ["~> 0.9.5"])
      s.add_dependency(%q<thoughtbot-shoulda>, ["~> 2.10.1"])
      s.add_dependency(%q<fakeweb>, ["~> 1.2.2"])
    end
  else
    s.add_dependency(%q<relax>, ["~> 0.1.1"])
    s.add_dependency(%q<jeweler>, ["~> 0.11.0"])
    s.add_dependency(%q<mocha>, ["~> 0.9.5"])
    s.add_dependency(%q<thoughtbot-shoulda>, ["~> 2.10.1"])
    s.add_dependency(%q<fakeweb>, ["~> 1.2.2"])
  end
end
