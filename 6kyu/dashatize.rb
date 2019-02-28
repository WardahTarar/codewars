=begin
Given a number, return a string with dash'-'marks before and after each odd integer, but do not begin or end the string with a dash mark.

Ex:

dashatize(274) -> '2-7-4'
dashatize(6815) -> '68-1-5'
=end

def dashatize(num)
  if num == nil
    return "nil"
  end
  
  num =  num.to_s.split('').map {|i| i = i.to_i.odd? ? "-" +i+ "-" : i }.join('') 
  
  if num.include? "--"
    num.gsub!("--","-")
  end
  if num[0] == '-'
    num[0] = ""
  end
  if num[-1] == '-'
    num[-1]= ""  
  end
  if num[0].to_i.is_a?(Integer)
    num
  end
end