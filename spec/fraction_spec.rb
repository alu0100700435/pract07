re 'lib/fraction'

describe Fraction do
  before :each do
    @f1 = Fraction.new(1,4) 
    @f2 = Fraction.new(4,6)
  end
end

describe " *Almacenamiento del numerador y denominador: " do
   it "Almacenamiento del numerador" do
	@f1.num.should eq(1)
   end

   it "Almacenamiento del denominador" do
	@f2.den.should eq(4)
   end

end




