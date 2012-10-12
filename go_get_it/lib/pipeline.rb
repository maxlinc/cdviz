class Pipeline

  attr_accessor :name, :stages, :executions

  def initialize(params)
    @name = params[:name]
    @stages = params[:stages] || []
    @executions = params[:executions] || {}
  end
end
