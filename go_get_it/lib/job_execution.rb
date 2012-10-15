class JobExecution
  AGENT, DURATION, ID, RESULT = [3, 4, 5, 6]
  attr_accessor :id, :agent, :duration, :result, :timestamps, :tests_report

  def initialize(options)
    @id = options[:id]
    @agent = options[:agent]
    @duration = options[:duration]
    @result = options[:result]
  end

  def self.create_from_csv_row(csv_row)
    JobExecution.new( agent: csv_row[AGENT],
                      duration: csv_row[DURATION],
                      id: csv_row[ID],
                      result: csv_row[RESULT])
  end

end
