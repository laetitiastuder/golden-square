require 'gratitudes'

RSpec.describe Gratitudes do
  it "add a new input gratitude to an array" do
    gratitude = Gratitudes.new()
    gratitude.add("Happy")
    gratitude.add("Joy")
    result = gratitude.format
    expect(result).to eq "Be grateful for: Happy, Joy"
  end
end