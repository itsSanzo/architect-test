class Airport

  DEFAULT_CAPACITY = 100

  def initialize(options = {})
    @capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
    @planes = []
  end

  def plane_count
    @planes.count
  end

  def full?
    plane_count == @capacity
  end

  def accept(plane, weather)
    raise "Airport has no landing space" if full?
    @planes << plane unless weather.stormy?
  end

  def take_off(plane, weather)
    @planes.delete(plane) unless weather.stormy?
  end

end