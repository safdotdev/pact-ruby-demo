source "https://rubygems.org"

group :development, :test do

  gem 'pry'

  gem 'rspec'

  gem 'pact'

  gem 'pact-message'

  gem 'rake'
  if ENV['X_PACT_DEVELOPMENT']
    gem 'sbmt-pact', path: '../sbmt-pact'
  else
    gem 'sbmt-pact', git: 'https://github.com/YOU54F/sbmt-pact.git', branch: 'feat/pact-ruby'
  end
  gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw]
  gem 'combustion'
  gem 'webmock'

end