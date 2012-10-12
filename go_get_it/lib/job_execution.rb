class JobExecution
  attr_accessor :id, :agent, :duration, :result, :timestamps

  def initialize(options)
    @id = options[:id]
    @agent = options[:agent]
    @duration = options[:duration]
    @result = options[:result]
  end
end
