require_relative '../string_calculator'

RSpec.describe StringCalculator do
  describe "add_method" do
    it "return 0 if string is empty" do
      expect(StringCalculator.add_method("")).to eq(0)
    end
 end
end