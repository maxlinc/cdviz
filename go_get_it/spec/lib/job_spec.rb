require './lib/job'
require './lib/job_execution'
describe 'Job' do
	before :all do
		@job = Job.new(name: 'job_name')	
    @execution = JobExecution.new(id: 123)
    @job.executions << @execution
	end

	subject { @job }

	its(:name) { should == 'job_name' }
  its(:executions) { should include @execution }

end
