require_relative 'bike'

class DockingStation

  DEFAULT_CAPACITY = 50
  attr_reader :bikes
  attr_accessor :capacity

  def initialize(capacity=DEFAULT_CAPACITY)
    @capacity = capacity
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
