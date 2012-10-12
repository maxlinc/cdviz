class ExecutionTimestamps

  attr_accessor :scheduled, :assigned, :preparing, :building, :completing, :completed

  def initialize(options)
    @scheduled = options[:scheduled]
    @assigned = options[:assigned]
    @preparing = options[:preparing]
    @building = options[:building]
    @completing = options[:completing]
    @completed = options[:completed]
  end
end
