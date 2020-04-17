class DockingStation

  attr_reader :shed

  def initialize
    @shed = []
  end

  def release_bike
    empty? ? @shed.sample : false
  end

  def dock_bike(bike)
      @shed << bike if !full?
  end

  private

  def full?
    @shed.count >= 20 ? (raise "station full.") : false
  end

  def empty?
    shed.empty? ? (raise "No bikes left.") : true
  end
end
