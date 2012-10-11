require './lib/job_execution'
describe 'JobExecution' do
  before :all do
    @job_execution = JobExecution.new(id: 1234,
                                      agent: 'vm.agent.007',
                                      duration: 42,
                                      result: 'Failed')
  end

  subject { @job_execution }
  
  its(:id) { should == 1234 }
  its(:agent) { should == "vm.agent.007" }
  its(:duration) { should == 42 }
  its(:result) { should == 'Failed' }
end
