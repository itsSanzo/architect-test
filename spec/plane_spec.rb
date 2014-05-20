require "plane"

describe Plane do 

  let(:plane) { Plane.new }
  
  it "should be flying when initialized" do
    expect(plane).to be_flying
  end

  it "should be able to land" do
    expect(plane).to be_flying
    plane.land
    expect(plane).not_to be_flying
  end

  it "should be able to take off when in the airport" do
    plane.land
    plane.take_off
    expect(plane).to be_flying
  end
	
end