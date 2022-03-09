require 'counter'

RSpec.describe Counter do
  it "is testing the class and calling different methods (at the end testing if the output is what you expect it to be)" do
    counter = Counter.new
    counter.add(5)
    counter.add(4)
    result = counter.report()
    expect(result).to eq "Counted to 9 so far."
  end 
end
