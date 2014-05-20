class Airport

  DEFAULT_CAPACITY = 100

  def initialize(options = {})
    @capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
    @planes = []
  end

  def plane_count
    @planes.count
  end

  def accept(plane)
    @planes << plane
  end

  def full?
    plane_count == @capacity
  end

end