class DockingStation

  attr_reader :bike_rack

  def initialize
@bike_rack = []
  end

  def release_bike
    fail 'No bikes available' if @bike_rack.empty?
    @bike_rack.pop
  end

  def dock(bike)
    fail 'Bike already docked' if @bike_rack.count >=20
    @bike_rack << bike
  end
end
