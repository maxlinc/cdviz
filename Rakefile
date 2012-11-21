require 'bundler/setup'
require 'rspec/core/rake_task'
require 'time'
require 'erb'

Dir['tasks/*.rake'].each {|f| load f}

RSpec::Core::RakeTask.new(:spec) do |spec|
  spec.pattern = 'specs/**/*_spec.rb'
end

task :default => [:spec]

desc 'Generate the green (VSM) portion of sample data'
task :gen_combo do
  red_data = true
  rails_apps = ['site', 'admin', 'store']
  deployments = [ 'qa', 'uat', 'prod']
  process_template('combo.graphml.erb', 'combo.graphml', binding)
end

desc 'Generate the green (VSM) portion of sample data'
task :gen_csv do
  pipeline_name = ['site', 'admin', 'store'].sample
  random_duration = Random.rand(5..50)
  @job_id = 0
  def job_id
    @job_id = @job_id +1
  end
  pipeline_counter = @pipeline_counter
  pipeline_label = @pipeline_label
  stage_counter = @stage_counter
  timestamp01 = Time.now.iso8601
  timestamp06 = (Time.now + random_duration + Random.rand(5..100)).iso8601
  puts 'pipeline,stage,job,cruise_agent,cruise_job_duration,cruise_job_id,cruise_job_result,cruise_pipeline_counter,cruise_pipeline_label,cruise_stage_counter,cruise_timestamp_01_scheduled,cruise_timestamp_02_assigned,cruise_timestamp_03_preparing,cruise_timestamp_04_building,cruise_timestamp_05_completing,cruise_timestamp_06_completed,tests_failed_count,tests_ignored_count,tests_total_count,tests_total_duration'
  10.times do | pipeline_counter |
    pipeline_label = "Build #{pipeline_counter}"
    10.times do | stage_counter |
      puts "#{pipeline_name},test,spec,go.example.com,#{random_duration},#{job_id},Passed,#{pipeline_counter},#{pipeline_label},#{stage_counter},#{timestamp01},2012-04-19T12:42:46+04:00,2012-04-19T12:42:56+04:00,2012-04-19T12:43:02+04:00,2012-04-19T12:43:35+04:00,#{timestamp06},,,,"
    end
  end
end

def process_template(template, output_file, _binding)
  content = File.read template
  template = ERB.new(content)
  File.open(output_file, 'wb').write(template.result(_binding))
end
