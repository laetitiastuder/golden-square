require "grammar_check"

RSpec.describe "grammar_check method" do
  context "given an empty string" do
    it "fails" do 
      expect { grammar_check("") }.to raise_error "Not a sentence."
    end
  end

  context "given a sentence with a capital letter and full stop" do
    it "returns true" do
      result = grammar_check("Hello, I am Tia.")
      expect(result).to eq true
    end
  end

  context "given a sentence without a capital letter" do
    it "returns false" do
      result = grammar_check("hello, I am Tia.")
      expect(result).to eq false
    end
  end

  context "given a sentence without a full stop" do
    it "returns false" do
      result = grammar_check("Hello, I am Tia")
      expect(result).to eq false
    end
  end

  context "given a sentence without a full stop and capital" do
    it "returns false" do
      result = grammar_check("hello, I am Tia")
      expect(result).to eq false
    end
  end

  context "given a sentence without a full stop and capital" do
    it "returns true" do
      result = grammar_check("HELLO, I am Tia.")
      expect(result).to eq true
    end
  end

  context "given a sentence with an exclamation mark" do
    it "returns true" do
      result = grammar_check("Hello, I am Tia!")
      expect(result).to eq true
    end
  end

  context "given a sentence with a question mark" do
    it "returns true" do
      result = grammar_check("Hello, I am Tia?")
      expect(result).to eq true
    end
  end

  context "given a sentence with a coma" do
    it "returns false" do
      result = grammar_check("Hello, I am Tia,")
      expect(result).to eq false
    end
  end
end