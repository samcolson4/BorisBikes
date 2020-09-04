class DockingStation

  attr_reader :bike_rack

  def initialize
    @bike_rack = []
  end

  def release_bike
    @bike_rack.pop
  end

  def dock(bike)
    @bike_rack << bike
  end

  private
  def full?
    fail 'Bike already docked' if @bike_rack.count >=20
  end

  def rack_empty?
    fail 'No bikes available' if @bike_rack.empty?
  end

end