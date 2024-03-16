require_relative '../string_calculator'

RSpec.describe StringCalculator do
  describe "add_method" do
    it "return 0 if string is empty" do
      expect(StringCalculator.add_method("")).to eq(0)
    end

    it "return the number if string has single number" do
      expect(StringCalculator.add_method("1")).to eq(1)
      expect(StringCalculator.add_method("32")).to eq(32)
      expect(StringCalculator.add_method("334")).to eq(334)
    end
 end
end