class Airport
  
  DEFAULT_CAPACITY = 100

  def initialize(capacity = {})
    @capacity = capacity.fetch(:capacity, DEFAULT_CAPACITY)
    @planes = []
  end

  def plane_count
    @planes.count
  end

  def add(plane)
    raise "Airport is full! Can't accept other planes." if full?
    @planes << plane
  end

  def takeoff(plane)
    @planes.delete(plane)
  end

  def full?
    plane_count == @capacity
  end

end