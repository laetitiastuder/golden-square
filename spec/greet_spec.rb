require 'greet'

RSpec.describe 'greet method' do
  it "greets user and return greeting with user's name" do
    result = greet("Mary")
    expect(result).to eq "Hello, Mary!"
  end 
end
 
