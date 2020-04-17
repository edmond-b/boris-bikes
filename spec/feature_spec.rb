require_relative '../lib/DockingStation.rb'
require_relative '../lib/Bike.rb'
station = DockingStation.new
20.times { station.dock_bike(Bike.new) }
