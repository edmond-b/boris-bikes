class DockingStation

  attr_reader :shed

  def initialize
    @shed = []
  end

  def release_bike
    raise "No bikes left." if @shed.empty?
    @shed.sample
  end

  def dock_bike(bike)
    raise "station full." if @shed.count >= 20
    @shed << bike
  end
end
