source "https://rubygems.org"

group :development, :test do

  gem 'pry'

  gem 'rspec'

  gem 'pact-message'

  gem 'rake'
  if ENV['X_PACT_DEVELOPMENT'] == 'true'
    gem 'pact', path: '../pact-ruby'
    gem 'pact-ffi', path: '../pact-ffi'
  else
    gem 'pact'
    gem 'pact-ffi'
  end
    # for pact/v2 with non rail apps
  gem 'activesupport'
  # gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw]
  # gem 'combustion'
  gem 'webmock'

end