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

    it "return the sum of number if string has more than one numbers" do
      expect(StringCalculator.add_method("1, 2")).to eq(3)
      expect(StringCalculator.add_method("32, 33")).to eq(65)
      expect(StringCalculator.add_method("334, 334")).to eq(668)
    end

    it "handles the sum method for new lines (instead of commas)" do
      expect(StringCalculator.add_method("1\n2,3")).to eq(6)
    end

    it "recognise the different delimiters when string looks like '//[delimeter]\n[numbers]'" do
      expect(StringCalculator.add_method("//;\n1;2")).to eq(3)
      expect(StringCalculator.add_method("//;\n1;2;3")).to eq(6)
    end
 end
end