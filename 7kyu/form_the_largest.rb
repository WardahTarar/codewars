=begin
Given a number , Return The Maximum number could be formed from the digits of the number given .

Notes
Only Positve numbers passed to the function , numbers Contain digits [1:9] inclusive  !alt !alt

Digit Duplications could occur , So also consider it when forming the Largest  !alt

Input >> Output Examples:
1- maxNumber (213) ==> return (321)
Explanation:
As 321 is The Maximum number could be formed from the digits of the number 213 .
=end

def max_number(n)
  n.digits.sort.reverse.join.to_i
end