require './lib/tests_report'
describe 'TestsReport' do
  before(:all) do
    @tests_report = TestsReport.new(total_count: 30,
                                    failed_count: 25,
                                    ignored_count: 2,
                                    duration: 1.25)
  end

  subject { @tests_report }

  its(:total_count) { should == 30 } 
  its(:failed_count) { should == 25 }
  its(:ignored_count) { should == 2 }
  its(:duration) { should == 1.25 }

  describe "create from csv row" do
    csv_row = ["go_get_it", "beginning", "test",  "vm1.thoughtworks.com",  "50",  "123", "Passed",  "1", "1", "1", "2012-04-19T12:42:36+04:00", "2012-04-19T12:42:46+04:00", "2012-04-19T12:42:56+04:00", "2012-04-19T12:43:02+04:00", "2012-04-19T12:43:35+04:00", "2012-04-19T12:43:35+04:00", "0", "1", "27",  "3.766"]

    it "creates a tests report given a csv row" do
      tests_report = TestsReport.create_from_csv_row(csv_row)
      tests_report.total_count.should == "27"
      tests_report.failed_count.should == "0"
      tests_report.ignored_count.should == "1"
      tests_report.duration.should == "3.766"
    end
  end
end
