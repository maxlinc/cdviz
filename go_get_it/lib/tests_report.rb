class TestsReport
  FAILED_COUNT, IGNORED_COUNT, TOTAL_COUNT, DURATION = [16, 17, 18, 19]
  attr_accessor :total_count, :failed_count, :ignored_count, :duration
  def initialize(options)
    @total_count = options[:total_count]
    @failed_count = options[:failed_count]
    @ignored_count = options[:ignored_count]
    @duration = options[:duration]
  end

  def self.create_from_csv_row(csv_row)
    new(total_count: csv_row[TOTAL_COUNT],
        failed_count: csv_row[FAILED_COUNT],
        ignored_count: csv_row[IGNORED_COUNT],
        duration: csv_row[DURATION])
  end
end
