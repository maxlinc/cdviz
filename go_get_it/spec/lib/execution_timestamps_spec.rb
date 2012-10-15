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
  
  describe "create from csv row" do
    csv_row = ["go_get_it", "beginning", "test",  "vm1.thoughtworks.com",  "50",  "123", "Passed",  "1", "1", "1", "2012-04-19T12:42:36+04:00", "2012-04-19T12:42:46+04:00", "2012-04-19T12:42:56+04:00", "2012-04-19T12:43:02+04:00", "2012-04-19T12:43:35+04:00", "2012-04-19T12:43:35+04:00", "0", "0", "27",  "3.766"]

    it "creates a execution timestamps given a row from csv" do
      execution_timestamps = ExecutionTimestamps.create_from_csv_row(csv_row) 
      execution_timestamps.scheduled.should == "2012-04-19T12:42:36+04:00"
      execution_timestamps.assigned.should == "2012-04-19T12:42:46+04:00"
      execution_timestamps.preparing.should == "2012-04-19T12:42:56+04:00"
      execution_timestamps.building.should == "2012-04-19T12:43:02+04:00"
      execution_timestamps.completing.should == "2012-04-19T12:43:35+04:00"
      execution_timestamps.completed.should == "2012-04-19T12:43:35+04:00"
    end
  end
end
