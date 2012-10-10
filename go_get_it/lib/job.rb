class Job
  attr_accessor :name, :executions

  def initialize(params)
    @name = params[:name]
    @executions = params[:executions] || []
  end
end
