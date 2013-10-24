require "lib/fraction.rb"

describe Fraction do
  
  before :each do
    @f1 = Fraction.new(1,4) 
    @f2 = Fraction.new(4,6)
  end


  describe "#Almacenamiento del numerador y denominador: " do
    it "Almacenamiento ok del numerador" do
	@f1.num.should eq(1)
    end
    it "Almacenamiento ok del denominador" do
	@f1.den.should eq(4)
    end
    it "Almacenamiento ok minimo del numerador" do
      @f2.num.should eq(2)
    end
    it "Almacenamiento ok minimo del denominador" do
      @f2.den.should eq(3)
    end 
  end
  
  describe "#Llamadas a los metodos num() y den():" do
    it "Obtencion del numerador" do
      @f2.num().should eq(2)
    end
    it "Obtencion del denominador" do
      @f2.den().should eq(3)
    end
  end
  
  describe "#Mostrar en string" do
    it "String de la fraccion 1" do
      @f1.to_string().should eq("1/4")
    end
    it "String de la fraccion 2" do
      @f2.to_string().should eq("2/3")
    end
  end
  
  describe "#Mostrar en float" do
    it "Float de la fraccion 1" do
      @f1.to_float().should eq(0.25)
    end
  end
  
  describe "#Multiplicacion de fracciones" do
    it "Multiplicacion de f1 y f2 numerador" do
      @f1.*(@f2).num.should eq(1)
    end
    it "Multiplicacion de f1 y f2 denominador" do
      @f1.*(@f2).den.should eq(6)
    end
  end
  
   describe "#Division de fracciones" do
    it "Division de f1 y f2 numerador" do
      @f1./(@f2).num.should eq(3)
    end
    it "Division de f1 y f2 denominador" do
      @f1./(@f2).den.should eq(8)
    end
  end
  
  describe "#Valor absoluto de fracciones" do
    it "Valor absoluto de f1 numerador" do
      @f1.abs().num.should eq(1)
    end
    it "Valor absoluto de f1 denominador" do
      @f1.abs().den.should eq(4)
    end
  end
end




