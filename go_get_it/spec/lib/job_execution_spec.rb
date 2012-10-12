require './lib/job_execution'
require './lib/execution_timestamps'
require './lib/tests_report'
describe 'JobExecution' do
  before :all do
    @job_execution = JobExecution.new(id: 1234,
                                      agent: 'vm.agent.007',
                                      duration: 42,
                                      result: 'Failed')
    @timestamps = ExecutionTimestamps.new({})
    @job_execution.timestamps = @timestamps
    @tests_report = TestsReport.new({})
    @job_execution.tests_report = @tests_report
  end

  subject { @job_execution }
  
  its(:id) { should == 1234 }
  its(:agent) { should == "vm.agent.007" }
  its(:duration) { should == 42 }
  its(:result) { should == 'Failed' }
  its(:timestamps) { should == @timestamps }
  its(:tests_report) { should == @tests_report }
end
