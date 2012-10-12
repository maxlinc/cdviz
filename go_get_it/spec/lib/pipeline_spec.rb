require './lib/pipeline'
require './lib/stage'
require './lib/job_execution'

describe 'Pipeline' do
  before :all do
    @pipeline = Pipeline.new(name: 'pipe')
    @stage = Stage.new(name: 'jobi')
    @pipeline.stages << @stage
    @job_execution = JobExecution.new(id: 42)
    @pipeline.executions[10] = @job_execution
  end

  subject { @pipeline }

  its(:name) { should eq('pipe') }

  its(:stages) { should include @stage } 

  its(:executions) { should include(10 => @job_execution) }

end
