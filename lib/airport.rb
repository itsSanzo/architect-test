class Airport
  def initialize
    @planes = []
  end

  def plane_count
    @planes.count
  end

  def add(plane)
    @planes << plane
  end

end