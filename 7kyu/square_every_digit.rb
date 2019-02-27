=begin
Welcome. In this kata, you are asked to square every digit of a number.

For example, if we run 9119 through the function, 811181 will come out, because 92 is 81 and 12 is 1.

Note: The function accepts an integer and returns an integer
=end

def square_digits(num)  
  new_digit = []
  string = num.to_s.split("")
  
  string.each do |digit|
    new_digit << digit.to_i ** 2
  end
  
  return new_digit.join.to_i
end