class Plane

  def initialize
		@landed = true
  end

  def landed?
  	@landed
  end

  def flying
  	@landed = false
  end

end