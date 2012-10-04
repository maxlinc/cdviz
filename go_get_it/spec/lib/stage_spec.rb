require './lib/stage'
require './lib/job'

describe 'Stage' do
  
  before :all do
    @stage = Stage.new(name: 'jobi')
    @job = Job.new
    @stage.jobs << @job
  end

  subject { @stage }

  its(:name) { should == 'jobi' }

  its(:jobs) { should include @job }

end
