source "https://rubygems.org"

group :development, :test do

  gem 'pry'

  gem 'rspec'

  # gem 'pact'

  gem 'pact-message'

  gem 'rake'
  if ENV['X_PACT_DEVELOPMENT']
    gem 'pact', path: '../pact-ruby'
  else
    gem 'pact', git: 'https://github.com/safdotdev/pact-ruby.git', branch: 'feat/pact-ruby-v2-conditional-install'
  end
  gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw]
  gem 'combustion'
  gem 'webmock'

end

# required to process messages in pact-ruby-v2
unless RUBY_PLATFORM =~ /win32|x64-mingw32|x64-mingw-ucrt/
  gem "sbmt-kafka_consumer", ">= 2.0.1"
  gem "sbmt-kafka_producer", ">= 1.0"
end
# gem "karafka-rdkafka", ">= 0.20.0"