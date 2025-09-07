# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.
require 'pact/tasks'

require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new('pact:spec') do |task|
  task.pattern = 'spec/pact/providers/**/*_spec.rb'
  task.rspec_opts = ['-t pact_v2']
end
RSpec::Core::RakeTask.new('pact:spec:v1') do |task|
  task.pattern = 'spec/service_consumers/*_spec.rb'
  task.rspec_opts = ['-t pact']
end

RSpec::Core::RakeTask.new('pact:verify:v2') do |task|
  task.pattern = 'spec/pact/consumers/**/*_spec.rb'
  task.rspec_opts = ['-t pact_v2']
end
