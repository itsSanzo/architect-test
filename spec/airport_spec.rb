require "airport"
require "weather"

describe Airport do

  let(:airport) { Airport.new(:capacity => 100) }
  let(:plane) { Plane.new }
  let(:weather) { Weather.new }
  
  it "should have no planes when initialized" do
    expect(airport.plane_count).to eq(0)
  end

  it "should know when it's full" do
    weather.stub(:weather_generator).and_return(4)
    expect(airport).not_to be_full
    100.times { airport.accept(plane, weather) }
    expect(airport).to be_full
  end

  it "should accept new planes when sunny" do
    weather.stub(:weather_generator).and_return(4)
    airport.accept(plane, weather)
    expect(airport.plane_count).to eq(1)
  end

  it "shouldn't accept new planes when stormy" do
    weather.stub(:weather_generator).and_return(1)
    airport.accept(plane, weather)
    expect(airport.plane_count).to eq(0)
  end

  it "should let planes take off when sunny" do
    weather.stub(:weather_generator).and_return(4)
    airport.accept(plane, weather)
    airport.take_off(plane, weather)
    expect(airport.plane_count).to eq(0)
  end

  it "should let planes take off when stormy" do
    weather.stub(:weather_generator).and_return(4)
    airport.accept(plane, weather)
    weather.stub(:weather_generator).and_return(1)
    airport.take_off(plane, weather)
    expect(airport.plane_count).to eq(1)
  end

  it "should raise an error if airport is full" do
    weather.stub(:weather_generator).and_return(4)
    100.times { airport.accept(plane, weather) }
    expect(lambda { airport.accept(plane, weather) }).to raise_error(RuntimeError)
  end

end