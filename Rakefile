require 'bundler/setup'
require 'rspec/core/rake_task'
require 'time'

Dir['tasks/*.rake'].each {|f| load f}

RSpec::Core::RakeTask.new(:spec) do |spec|
  spec.pattern = 'specs/**/*_spec.rb'
end

task :default => [:spec]