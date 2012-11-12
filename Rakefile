require 'bundler/setup'
require 'rspec/core/rake_task'
require 'time'
require 'erb'

Dir['tasks/*.rake'].each {|f| load f}

RSpec::Core::RakeTask.new(:spec) do |spec|
  spec.pattern = 'specs/**/*_spec.rb'
end

task :default => [:spec]

desc 'Generates random sample data'
task :gen_sample do
  process_template('big.graphml.erb', 'big.graphml')
end

desc 'Generate the green (VSM) portion of sample data'
task :gen_green do
  process_template('green.graphml.erb', 'green.graphml')
end

desc 'Generate the green (VSM) portion of sample data'
task :gen_combo do
  process_template('combo.graphml.erb', 'combo.graphml')
end


def process_template(template, output_file)
  red_data = true
  rails_apps = ['site', 'admin', 'store']
  deployments = [ 'qa', 'uat', 'prod']
  content = File.read template
  template = ERB.new(content)
  File.open(output_file, 'wb').write(template.result(binding))
end
