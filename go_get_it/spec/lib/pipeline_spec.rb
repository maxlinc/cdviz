require './lib/pipeline'
require './lib/stage'

describe 'Pipeline' do
  before :all do
    @pipeline = Pipeline.new(name: 'pipe')
    @stage = Stage.new(name: 'jobi')
    @pipeline.stages << @stage
  end

  subject { @pipeline }

  its(:name) { should eq('pipe') }

  its(:stages) { should include @stage } 
end
