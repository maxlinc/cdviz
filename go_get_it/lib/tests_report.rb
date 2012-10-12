class TestsReport
  attr_accessor :total_count, :failed_count, :ignored_count, :duration
  def initialize(options)
    @total_count = options[:total_count]
    @failed_count = options[:failed_count]
    @ignored_count = options[:ignored_count]
    @duration = options[:duration]
  end
end
