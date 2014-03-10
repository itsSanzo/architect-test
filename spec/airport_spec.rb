require "airport.rb"
require "plane.rb"

describe Airport do
  let(:plane) { Plane.new }
  let(:airport) { Airport.new }

  def full_airport(airport)
    100.times { airport.add(Plane.new) }
  end

  it "should accept a plane" do
    expect(airport.plane_count).to eq(0)
    airport.add(plane)
    expect(airport.plane_count).to eq(1)
  end

  it "should let a plane take off" do
    airport.add(plane)
    airport.takeoff(plane)
    expect(airport.plane_count).to eq(0)
  end

  it "should know when it's full" do
    expect(airport).not_to be_full
    full_airport(airport)
    expect(airport).to be_full
  end

  it "should not accept planes if full" do
    full_airport(airport)
    expect(lambda { airport.add(plane) }).to raise_error(RuntimeError)
  end
  
end