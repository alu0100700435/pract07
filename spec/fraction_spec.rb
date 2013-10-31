require "lib/fraction.rb"

describe Fraction do
  
  before :each do
    @f1 = Fraction.new(1,4) 
    @f2 = Fraction.new(4,6)
    @f3 = Fraction.new(4,7)
  end


  describe "#Almacenamiento del numerador y denominador: " do
    it "Almacenamiento ok del numerador" do
	@f1.num.should == 1
    end
    it "Almacenamiento ok del denominador" do
	@f1.den.should == 4
    end
    it "Almacenamiento ok minimo del numerador" do
      @f2.num.should == 2
    end
    it "Almacenamiento ok minimo del denominador" do
      @f2.den.should == 3
    end 
  end
  
  describe "#Llamadas a los metodos num() y den():" do
    it "Obtencion del numerador" do
      @f2.num().should == 2
    end
    it "Obtencion del denominador" do
      @f2.den().should == 3
    end
  end
  
  describe "#Mostrar en string" do
    it "String de la fraccion 1" do
      @f1.to_s.should == "1/4"
    end
    it "String de la fraccion 2" do
      @f2.to_s.should == "2/3"
    end
  end
  
  describe "#Mostrar en float" do
    it "Float de la fraccion 1" do
      @f1.to_f.should == 0.25
    end
  end
  
  describe "#Suma de fracciones" do
    it "Suma de f1 y f2, numerador" do
      (@f1+@f2).num.should == 11
    end
    it "Suma de f1 y f2, denominador" do
      (@f1+@f2).den.should == 12
    end
  end
  
  describe "#Resta de fracciones" do
    it "Resta de f1 y f2, numerador" do
      (@f1-@f2).num.should == -5
    end
    it "Resta de f1 y f2, denominador" do
      (@f1-@f2).den.should == 12
    end
  end

  describe "#Multiplicacion de fracciones" do
    it "Multiplicacion de f1 y f2, numerador" do
      (@f1*@f2).num.should == 1
    end
    it "Multiplicacion de f1 y f2, denominador" do
      (@f1*@f2).den.should == 6
    end
  end
  
  describe "#Division de fracciones" do
    it "Division de f1 y f2, numerador" do
      (@f1/@f2).num.should == 3
    end
    it "Division de f1 y f2, denominador" do
      (@f1/@f2).den.should == 8
    end
  end
  
  describe "#Valor absoluto de fracciones" do
    it "Valor absoluto de f1, numerador" do
      @f1.abs.num.should == 1
    end
    it "Valor absoluto de f1, denominador" do
      @f1.abs.den.should == 4
    end
  end
  
  describe "#Opuesto de fracciones" do
    it "Opuesto de f1, numerador" do
      (-@f1).num.should == -1
      (-@f1).den.should == 4
    end
  end
  
  describe "#Reciproco de fracciones" do
    it "Reciproco de f1" do
      @f1.reciprocal().num.should == 4
      @f1.reciprocal().den.should == 1
    end
    it "Reciproco de f1" do
      @f2.reciprocal().num.should == 3
      @f2.reciprocal().den.should == 2
    end
  end
  
  describe "#Reciproco de la division de dos fracciones" do
    it "Reciproco de f1/f2" do
      @f1.reciprocal_div(@f2).num.should == 8
      @f1.reciprocal_div(@f2).den.should == 3
    end
  end
  
  describe "#Comparacion de igualdad de fracciones" do
    it "Comparacion de f1 y f2" do
      (@f1 == @f2).should == false
    end

  end
  
  describe "#Comparaciones" do
    it "Comparacion < de f1 y f2" do
      (@f1 < @f2).should == true
    end
    it "Comparacion > de f1 y f2" do
      (@f1 > @f2).should == false
    end
    it "Comparacion <= de f1 y f2" do
      (@f1 <= @f2).should == true
    end
    it "Comparacion >= de f1 y f2" do
      (@f1 >= @f2).should == false
    end
  end
  
  describe "#Modulo de 2 fracciones" do
    it "modulo de f1 y f2" do
      (@f3%@f2).should == 12    
    end
  end
  
end




