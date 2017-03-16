require_relative 'bike'

class DockingStation
DEFAULT_CAPACITY = 20
  def initialize
    @bikes = []
  end

  def release_bike
    fail 'No bikes available' if empty?
    @bikes.pop
  end

  def dock(bike)
    fail 'This station is full' if full?
    @bikes << bike
  end


attr_reader :bikes

private

  def empty?
    @bikes.empty?
  end

  def full?
    @bikes.size >= DEFAULT_CAPACITY
  end

end
