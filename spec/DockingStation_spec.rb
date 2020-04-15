require 'DockingStation'
require 'Bike'

describe DockingStation do
  it 'responds to release_bike' do
    expect(subject).to respond_to(:release_bike)
  end

  describe ".release_bike" do
    it "returns a Bike object" do
      expect(subject.release_bike).to be_a_kind_of(Bike)
    end
  end

  describe ".dock_bike" do
    it "adds a bike to docking_station" do
      bike = Bike.new
      expect { subject.dock_bike(bike) }.to change(subject, :bikes).to include(bike)
    end
  end
end
