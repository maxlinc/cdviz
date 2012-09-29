class Stage

  attr_accessor :name, :jobs

  def initialize(params)
    @name = params[:name]
    @jobs = params[:jobs] || []
  end
end
