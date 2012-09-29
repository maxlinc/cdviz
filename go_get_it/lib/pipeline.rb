class Pipeline

  attr_accessor :name, :stages

  def initialize(params)
    @name = params[:name]
    @stages = params[:stages] || []
  end
end
