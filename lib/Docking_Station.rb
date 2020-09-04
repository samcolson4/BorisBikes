class DockingStation

  DEFAULT_CAPACITY = 20

  attr_reader :bike_rack

  def initialize
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
    @bike_rack.count >= DEFAULT_CAPACITY
  end

  def rack_empty?
    @bike_rack.empty?
  end

end