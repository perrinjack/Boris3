require './bike.rb'

class DockingStation
  
  DEFAULT_CAPACITY = 20
  
  attr_reader :capacity

  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def dock(bikes)
    fail "No spaces to dock" if full?
    @bikes.push(bikes)
  end

  def release_bike
    fail "No bikes available" if empty?
    @bikes.pop
  end

  private
  attr_reader :bikes
  def full?
    bikes.count >= capacity
  end

  def empty?
    bikes.empty?
  end
end
