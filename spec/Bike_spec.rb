require 'Bike'

describe Bike do
  it 'bike responds to working?' do
    expect(subject).to respond_to(:working?)
  end
  
  describe ".working?" do
    it "returns true" do
      expect(subject.working?).to be true
    end
  end
end
