class DockingStation
  @number_of_bikes = 0

  def release_bike
    Bike.new
  end

  def dock
    @count += 1
  end
end
