# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.
require 'pact/tasks'

require 'rspec/core/rake_task'

ENV['PACT_RUBY_V2_ENABLE'] = 'true'
ENV['PACT_RUBY_V1_ENABLE'] = 'true'

RSpec::Core::RakeTask.new('pact:v2:spec') do |task|
  task.pattern = 'spec/pact/providers/**/*_spec.rb'
  task.rspec_opts = ['-t pact_v2']
end
RSpec::Core::RakeTask.new('pact:spec') do |task|
  task.pattern = 'spec/service_consumers/*_spec.rb'
  task.rspec_opts = ['-t pact']
end

RSpec::Core::RakeTask.new('pact:v2:verify') do |task|
  task.pattern = 'spec/pact/consumers/**/*_spec.rb'
  task.rspec_opts = ['-t pact_v2']
end
