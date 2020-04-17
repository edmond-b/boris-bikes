class DockingStation

  DEFAULT_CAPACITY = 20
  attr_reader :shed, :capacity

  def initialize(num = DEFAULT_CAPACITY)
    @capacity = num
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
    @shed.count >= DEFAULT_CAPACITY ? (raise "station full.") : false
  end

  def empty?
    shed.empty? ? (raise "No bikes left.") : true
  end
end
