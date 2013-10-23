# Clase Fractiom

require "lpp/lib/gcd"

class Fraction
  attr_reader :num, :den
  
  
  def initalize(num, den)
    
    common = gcd(num, den)
    
    @num = num / common
    
    if (num > 0)
      @den = den / common
    end
  end
#   def num() 
#     @num
#   end
# 
#   def den()
#     @den
#   end
#   
#   def to_string()
#     "#{@num}/#{@den}"
#   end
# 
#   def to_float()
#     flotante =@num.to_f/@den.to_f
#     flotante
#   end
#  
#   
#   def +(other)
#     Fraction.new(@num* other.den + other.num*@den, @den * other.den)
#   end
#   
#   def -(other)
#   end
#   
#   def *(other)
#     Fraction.new(@num * other.num, @den *other.den)
#   end
#   
#   def \(other)
#     Fraction.new(@num * other.den, @den *other.num)
#   end
#   
#   def %
#     @num % @den
#   end
#   
#   def abs()
#     Fraction.new(@num.abs, @den.abs)
#   end
#   
#   def -@
#     Fraction.new(@num * -1, @den)
#   end
#   
#   def reciprocal()
#     Fraction.new(@den, @num)
#   end
#   
#   def ==(other)
#     if(@num == other.num) && (@den == other.den)
#       true
#     else
#       false
#     end
#   end
#   
#   def <=>(other)    
#     to_float <=> other.to_float    
#   end
#      
end