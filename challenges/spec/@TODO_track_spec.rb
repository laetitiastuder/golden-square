require "@TODO_track"

RSpec.describe "track_tasks method" do
  context "given an empty string" do
    it "fails" do
      expect { track_tasks("")}.to raise_error "No task entered"
    end
  end 

  context "given a text including a @TODO string" do
    it "return true" do
      expect(track_tasks("@TODO walking the dog")).to eq true
    end 
  end 

  context "given a text not including @TODO string" do
    it "return false" do
      expect(track_tasks("walking the dog")).to eq false
    end 
  end

  context "given a text including TODO without @" do
    it "return false" do
      expect(track_tasks("TODO walking the dog")).to eq false
    end 
  end

  context "given a text including @TODO followed by punctuation" do
    it "return false" do
      expect(track_tasks("@TODO: walking the dog")).to eq false
    end 
  end
end