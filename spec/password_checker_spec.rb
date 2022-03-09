require "password_checker"

RSpec.describe PasswordChecker do
  context "when the password is equal or higher to 8 characters" do
    it "checking that a password is minimum 8 characters long" do
      password = PasswordChecker.new()
      result = password.check("saturday")
      expect(result).to eq true
    end
  end

  context "when the password is equal or lower to 8 characters" do
    it "fails" do
      password = PasswordChecker.new()
      result = password.check("saturday")
      expect { password.check("cat") }.to raise_error "Invalid password, must be 8+ characters."
    end 
  end
end
