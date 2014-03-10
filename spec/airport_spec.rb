require "airport.rb"
require "plane.rb"

describe Airport do
  let(:plane) { Plane.new }
  let(:airport) { Airport.new }

  it "should accept a plane" do
    expect(airport.plane_count).to eq(0)
    airport.add(plane)
    expect(airport.plane_count).to eq(1)
  end
  
end