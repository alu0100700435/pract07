# Clase Fractiom

class Fraction
  attr_reader :num, :den
  
  def initalize(num, den)
    @num, @den = num, den
  end
  
  def =(num)
    @num = num
  end
  
  def =(den)
   if (den != 0)
     @den = den
  end
  
  def +(other)
  end
  
  def -(other)
  end
  
  def *(other)
  end
  
  def \(other)
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
  
  