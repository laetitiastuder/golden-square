require 'report_length'

RSpec.describe 'report string length method' do 
  it "take the string as input and return the input's length" do
    result = report_length("home")
    expect(result).to eq "This string was 4 characters long."
  end 
end