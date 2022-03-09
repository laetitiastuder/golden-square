require "present"

RSpec.describe Present do
  context "" do
    it  "fails if a content has been wrapped" do
      present = Present.new
      present.wrap(9)
      expect { present.wrap(5) }.to raise_error "A contents has already been wrapped."
    end

    it "fails if no content have been wrapped" do
      present = Present.new
      expect { present.unwrap }.to raise_error "No contents have been wrapped." 
    end
  end
end