require './lib/execution_timestamps'

describe 'ExecutionTimestamps' do
 before :all do
  @timestamps = ExecutionTimestamps.new(scheduled: "2012-04-19T12:42:36+04:00",
                                        assigned: "2012-04-19T12:42:46+04:00",
                                        preparing: "2012-04-19T12:42:56+04:00",
                                        building: "2012-04-19T12:43:02+04:00",
                                        completing: "2012-04-19T12:43:35+04:00",
                                        completed: "2012-04-19T12:43:35+04:00")
 end

  subject { @timestamps }

  its(:scheduled) { should == "2012-04-19T12:42:36+04:00" }
  its(:assigned) { should == "2012-04-19T12:42:46+04:00" }
  its(:preparing) { should == "2012-04-19T12:42:56+04:00" }
  its(:building) { should == "2012-04-19T12:43:02+04:00" }
  its(:completing) { should == "2012-04-19T12:43:35+04:00" }
  its(:completed) { should == "2012-04-19T12:43:35+04:00" }

end
