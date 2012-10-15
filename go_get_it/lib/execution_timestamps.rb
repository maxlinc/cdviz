class ExecutionTimestamps
  SCHEDULED, ASSIGNED, PREPARING = [10, 11, 12] 
  BUILDING, COMPLETING, COMPLETED = [13, 14, 15]
  attr_accessor :scheduled, :assigned, :preparing, :building, :completing, :completed

  def initialize(options)
    @scheduled = options[:scheduled]
    @assigned = options[:assigned]
    @preparing = options[:preparing]
    @building = options[:building]
    @completing = options[:completing]
    @completed = options[:completed]
  end

  def self.create_from_csv_row(csv_row)
    ExecutionTimestamps.new(scheduled: csv_row[SCHEDULED],
                            assigned: csv_row[ASSIGNED],
                            preparing: csv_row[PREPARING],
                            building: csv_row[BUILDING],
                            completing: csv_row[COMPLETING],
                            completed: csv_row[COMPLETED]) 
  end
end
