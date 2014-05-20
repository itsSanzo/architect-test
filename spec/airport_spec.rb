require "airport"

describe Airport do

  let(:airport) { Airport.new(:capacity => 100) }
  let(:plane) { Plane.new }
  
  it "should have no planes when initialized" do
    expect(airport.plane_count).to eq(0)
  end

  it "should know when it's full" do
    expect(airport).not_to be_full
    100.times { airport.accept(plane) }
    expect(airport).to be_full
  end

end