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

  describe "create from csv row" do
    csv_row = ["go_get_it", "beginning", "test",  "vm1.thoughtworks.com",  "50",  "123", "Passed",  "1", "1", "1", "2012-04-19T12:42:36+04:00", "2012-04-19T12:42:46+04:00", "2012-04-19T12:42:56+04:00", "2012-04-19T12:43:02+04:00", "2012-04-19T12:43:35+04:00", "2012-04-19T12:43:35+04:00", "0", "0", "27",  "3.766"]
    it "create a job execution given a row from the csv" do
      job_execution = JobExecution.create_from_csv_row(csv_row)
      job_execution.agent.should == "vm1.thoughtworks.com"
      job_execution.duration.should == "50"
      job_execution.id.should == "123"
      job_execution.result.should == "Passed"
    end
  end
end
