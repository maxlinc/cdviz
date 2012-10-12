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
end
