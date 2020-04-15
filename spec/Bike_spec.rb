require 'Bike'

describe Bike do
  it 'bike responds ro working?' do
    expect(subject).to respond_to(:working?)
  end
end
