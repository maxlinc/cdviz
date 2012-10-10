require 'bundler/setup'
require 'rspec/core/rake_task'
require 'time'

Dir['tasks/*.rake'].each {|f| load f}

RSpec::Core::RakeTask.new(:spec) do |spec|
  spec.pattern = 'specs/**/*_spec.rb'
end

task :default => [:spec]

desc 'Generates random sample data'
task :gen_sample do
  require 'erb'
  rails_apps = ['site', 'admin', 'store']
  deployments = [ 'qa', 'uat', 'prod']
  content = File.read 'big.graphml.erb'
  template = ERB.new(content)
  File.open('big.graphml', 'wb').write(template.result(binding))
end
