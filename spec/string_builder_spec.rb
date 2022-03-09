require 'string_builder'
RSpec.describe StringBuilder do
  it "takes a string and add another string which increases the lenght of the string" do
    string = StringBuilder.new
    string.add("Hello")
    string.add("World")
    result = string.size
    expect(result).to eq 10
  end

  it "output a new string made of the orginal string and new strings" do
    string = StringBuilder.new
    string.add("Home")
    string.add("cat")
    result = string.output
    expect(result).to eq "Homecat"
  end
end














=begin
RSpec.describe 'string builder' do
  it "output a new string made of added strings from input" do
    #create a new object to the class
    string = StringBuilder.new
    #run a method on the new object -- a method necessary to the end result of the class
    string.add("hello")
    string.add("world")
    # run a method on the new class to achieve the class purpose (as per line 4)
    result = string.output()
    expect(result).to eq "helloworld"
  end 

  it "return the string length" do
    string = StringBuilder.new
    string.add("hello")
    result = string.size()
    expect(result).to eq 5
  end 
end
=end