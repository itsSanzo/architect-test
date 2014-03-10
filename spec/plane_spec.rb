require "plane.rb"

describe Plane do
  
  let(:plane) { Plane.new }

  it "should be landed when initialized" do
    expect(plane.landed?).to be_true
  end

  it "should be flying after taking off" do
    plane.flying
    expect(plane.landed?).to be_false
  end

	
end