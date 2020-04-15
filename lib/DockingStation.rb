class DockingStation

  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    raise "No bikes left." if @bikes.empty?
    @bikes.sample
  end

  def dock_bike(bike)
    @bikes << bike
  end
  
end
