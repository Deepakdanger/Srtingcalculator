class StringCalculator
  def self.add_method(string_numbers)
    return 0 if string_numbers.empty?
    del = ","
    if string_numbers.start_with?("//")
      del = string_numbers[2]
      string_numbers = string_numbers.split("\n",2)[1]
    end

    string_numbers.split(/,|\n|#{del}/).map(&:to_i).sum
  end
end