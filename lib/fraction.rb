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
    @den = den
  end
  
end
  
  