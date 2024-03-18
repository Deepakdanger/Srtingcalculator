class StringCalculator
  def self.add_method(string_numbers)
    return 0 if string_numbers.empty?
    del = ","
    if string_numbers.start_with?("//")
      del = string_numbers[2]
      string_numbers = string_numbers.split("\n",2)[1]
    end

    numbers = string_numbers.split(/,|\n|#{del}/).map(&:to_i)
    negative_numbers = numbers.select {|num| num < 0 }
    if negative_numbers.any?
      raise "negative number not allowed #{negative_numbers}"
    else
      numbers.sum
    end
  end
end

output = StringCalculator.add_method("1,2,5")
p output
