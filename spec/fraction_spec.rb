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
  
end




