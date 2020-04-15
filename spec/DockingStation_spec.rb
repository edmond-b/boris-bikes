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
end
