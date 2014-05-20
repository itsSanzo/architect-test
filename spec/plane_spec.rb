require "plane"

describe Plane do 
  
  it "should be flying when initialized" do
    plane = Plane.new
    expect(plane).to be_flying
  end
	
end