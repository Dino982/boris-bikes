require_relative 'bike'

class DockingStation
  
  DEFAULT_CAPACITY = 20
  attr_reader :bike

  def initialize
    @bikes = []
  end

  def release_bike
    fail("No bikes left") if empty?
    @bikes.pop
  end

  def dock(bike)
    fail("Full capacity") if full?
    @bikes.push(bike)
  end

  private

  def full?
      @bikes.count >= DEFAULT_CAPACITY
  end

  def empty?
    @bikes.empty?
  end

end

docking_station = DockingStation.new
