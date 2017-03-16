require_relative 'bike'

class DockingStation

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
    @bikes.size <= 0
  end

  def full?
    @bikes.size >= 20
  end

end
