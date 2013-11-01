require 'rspec'
require './lib/prct07'

describe Fraccion do
	
	before :each do
		@a = Fraccion.new(3,9)
		@b = Fraccion.new(4,20)
		@c = Fraccion.new(3,9)
		@d = Fraccion.new(-3,-9)
		@e = Fraccion.new(-4,20)
	end

	it "Debe existir un numerador" do
		@a.num.should eq 3
		@b.num.should eq 4
	end

	it "Debe existir un denominador" do
		@a.den.should eq 9
		@b.den.should eq 20
	end

	it "Debe estar en forma reducida" do
		@a.simp.show_frac.should eq "(1/3)"
		@b.simp.show_frac.should eq "(1/5)"
	end

	it "Debe mostrar la fraccion en la forma a/b" do
		@a.show_frac.should eq "(3/9)"
		@b.show_frac.should eq "(4/20)"
	end

	it "Debe mostrar la fraccion en formato float" do
		@a.to_f.should eq 0.3333333333333333
		@b.to_f.should eq 0.2
	end

	it "Debe mostrar la fraccion en formato float" do
		@a.to_f.should eq 0.3333333333333333
		@b.to_f.should eq 0.2
	end

	it "Debe comparar dos fracciones con ==" do
		(@a==@b).should eq false
		(@a==@c).should eq true
	end

	it "Debe calcular el valor absoluto" do
		@d.abs.should eq "(3/9)"
		@e.abs.should eq "(4/20)"
	end

	it "Debe calcular el reciproco" do
		@a.reciproco.should eq "(9/3)"
		@d.reciproco.should eq "(-9/-3)"
	end

	it "Debe calcular el opuesto" do
		@c.opuesto.should eq "(-3/-9)"
		@d.opuesto.should eq "(3/9)"
		@e.opuesto.should eq "(4/20)"
	end

	it "Debe calcular la suma de 2 fracciones" do
		(@a+@b).should eq "(8/15)"
	end
	
	it "Debe calcular la resta de 2 fracciones" do
		(@a-@b).should eq "(2/15)"
	end
	
	it "Debe calcular la multiplicacion de 2 fracciones" do
		(@a*@b).should eq "(1/15)"
	end
	
	it "Debe calcular la division de 2 fracciones" do
		(@a/@b).should eq "(5/3)"
	end

	it "Debe comparar si una fraccion es mayor que otra" do
		(@a>@b).should eq true
	end

	it "Debe comparar si una fraccion es menor que otra" do
		(@a<@b).should eq false
	end

	it "Debe comparar si una fraccion es mayor o igual que otra" do
		(@a>=@b).should eq true
	end

	it "Debe comparar si una fraccion es menor o igual que otra" do
		(@a<=@c).should eq true
	end

	it "Debe devolver el valor absoluto de la multiplicacion" do
		@a.modif(@e).should eq "(1/15)"
	end

end
