require 'check_codeword'

RSpec.describe 'check codeword' do
  it "returns correct message when input is horse" do
    result = check_codeword("horse")
    expect(result).to eq "Correct! Come in."
  end 

  it "returns correct message when input starts and ends correctly" do
    result = check_codeword("home")
    expect(result).to eq "Close, but nope."
  end 
  
  it "returns correct message when input starts correctly only" do
    result = check_codeword("hash")
    expect(result).to eq "WRONG!"
  end 

  it "returns correct message when input is far from the code word" do
    result = check_codeword("rice")
    expect(result).to eq "WRONG!"
  end 
end