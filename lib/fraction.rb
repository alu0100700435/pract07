# Clase Fractiom

require gcd

class Fraction
  attr_reader :num, :den
  
  
  def initalize(num, den)
    
    common = gcd(num, den)
    
    @num = num / common
    
    if (num !=0)
      @den = den / common
    end
  end
  
  def to_string
    "#{@num}/#{@den}"
  end

  def to_float
    @num.to_f/@den.to_f
  end
 
  
  def +(other)
  end
  
  def -(other)
  end
  
  def *(other)
    Fraction.new(@num * other.num, @den *other.den)
  end
  
  def \(other)
    Fraction.new(@num * other.den, @den *other.num)
  end
  
  def %
    @num % @den
  end
  
  def abs
  end
  
  def -@
  end
  
  def rep
  end
  
  def ==(other)
    if(@num == other.num) && (@den == other.den)
      true
    else
      false
    end
  end
  
  def <(other)
  end
  
  def >(other)
  end
  
  def <=(other)
  end
  
  def >=(other)
  end
  
end
  
  