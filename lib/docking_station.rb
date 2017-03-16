require_relative 'bike'

class DockingStation
DEFAULT_CAPACITY = 20

  def initialize(capacity=DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def release_bike
   if empty?
      fail 'No bikes available'
   elsif bikes[-1].status == false
      fail 'This is a broken bike'
   else
      bikes.pop
   end
  end

  def dock(bike)
    fail 'Docking station full' if full?
    bikes << bike
  end


attr_reader :bikes, :capacity

private



  def empty?
    @bikes.empty?
  end

  def full?
    @bikes.size >= @capacity
  end

end
