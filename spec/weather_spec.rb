require "weather"

describe Weather do   
  
  let(:weather) { Weather.new }

  it "should know when it's stormy" do
    weather.stub(:weather_generator).and_return(1)
    expect(weather).to be_stormy
  end

  it "should know when it's sunny" do
    weather.stub(:weather_generator).and_return(4)
    expect(weather).not_to be_stormy
  end

end