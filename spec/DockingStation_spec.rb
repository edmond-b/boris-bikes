require 'DockingStation'
require 'Bike'

describe DockingStation do
  it 'responds to release_bike' do
    expect(subject).to respond_to(:release_bike)
  end

  describe ".release_bike" do
    context "it has bikes" do
      it "returns a Bike object" do
        subject.bikes << Bike.new
        expect(subject.release_bike).to be_a_kind_of(Bike)
      end
    end
    context "it doesn't have bikes" do
      it "raises an no bikes error" do
        expect { subject.release_bike }.to raise_error(RuntimeError, "No bikes left.")
      end
    end
  end

  describe ".dock_bike" do
    context "station empty" do
    it "adds a bike to docking_station" do
      bike = Bike.new
      expect { subject.dock_bike(bike) }.to change(subject, :bikes).to include(bike)
    end
  end
    context "station full" do
      it "returns station full" do
      bike = Bike.new
      subject.bikes << Bike.new
      expect { subject.dock_bike(bike) }.to raise_error(RuntimeError, "station full.")
    end
  end
end

  describe ".bikes" do
    it "lets us read an array" do
      expect(subject.bikes).to be_a_kind_of(Array)
    end
  end
end
