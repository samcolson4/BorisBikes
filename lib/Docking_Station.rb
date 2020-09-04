class DockingStation
  DEFAULT_CAPACITY = 20

  attr_reader :bike_rack
  attr_reader :capacity

  def initialize
    @capacity = DEFAULT_CAPACITY
    @bike_rack = []
  end

  def release_bike
    fail 'No bikes available' if rack_empty?
    @bike_rack.pop
  end

  def dock(bike)
    fail 'Bike already docked' if full?
    @bike_rack << bike
  end

private
  def full?
    @bike_rack.count >= @capacity
  end

  def rack_empty?
    @bike_rack.empty?
  end

end