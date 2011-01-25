source :rubygems

case ("rails%s" % ENV.fetch("RAILS_VERSION", "3")).to_sym
when :rails3; gem 'activerecord', '~> 3.0.3'
when :rails2; gem 'activerecord', '~> 2.3.10'
end

group :development do
  gem "bundler", "~> 1.0.0"
  gem "rake", "~> 0.8.7"
  gem "rspec", "2.1.0"
end
