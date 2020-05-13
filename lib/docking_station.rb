require './bike.rb'

class DockingStation
  attr_reader :bikes
  def initialize
    @bikes = []
  end

  def dock(bikes)
    fail "No spaces to dock" if @bikes.count >= 20
    @bikes.push(bikes)
  end

  def release_bike
    fail "No bikes available" if @bikes.empty?
    @bikes.pop
  end
end
