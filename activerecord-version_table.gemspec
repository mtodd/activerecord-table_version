Gem::Specification.new do |s|
  s.name = %q{activerecord-version_table}
  s.version = "0.0.1"
  
  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Matt Todd"]
  s.date = %q{2011-01-25}
  s.description = %q{Specify a table name with a version number}
  s.email = %q{chiology@gmail.com}
  s.files = [
    "activerecord-version_table.gemspec",
    "Gemfile",
    "Gemfile.lock",
    "lib/activerecord/version_table.rb",
    "lib/activerecord-version_table.rb",
    "lib/activerecord.rb",
    "Rakefile",
    "Readme.textile",
    "spec/activerecord-version_table_spec.rb",
    "spec/spec_helper.rb"
  ]
  s.homepage = %q{http://github.com/mtodd/activerecord-version_table}
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Specify a table name with a version number}
  s.test_files = [
    "spec/spec_helper.rb",
    "spec/activerecord-version_table_spec.rb"
  ]
  
  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3
    
    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency("bundler", ["~> 1.0.0"])
      s.add_development_dependency("rake",    ["~> 0.8.7"])
      s.add_development_dependency("rspec",   ["= 2.1.0"])
    else
      s.add_dependency("bundler", ["~> 1.0.0"])
      s.add_dependency("rake",    ["~> 0.8.7"])
      s.add_dependency("rspec",   ["= 2.1.0"])
    end
  else
    s.add_dependency("bundler", ["~> 1.0.0"])
    s.add_dependency("rake", ["~> 0.8.7"])
    s.add_dependency("rspec", ["= 2.1.0"])
  end
end
