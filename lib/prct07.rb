class Fraccion
        include Comparable

   attr_accessor :num,:den

   def initialize(num,den)
      @num,@den = num,den
   end

   def show_frac
      "(#{@num}/#{@den})"
   end

   def to_f
      @num/@den.to_f
   end

   def reduc(num, den)        # Devuelve el maximo comun divisor
                a = num.abs
                b = den.abs
                min = 1
                k = 1
                while (k <= a) and (k <= b) do
                        if ((a % k) == 0) and ((b % k) == 0) then
                                min = k
                        end
                        k += 1
                end
                return min
        end

        def simp                 # Simplifica la fraccion
                
                a = @num/reduc(@num, @den)
                b = @den/reduc(@num, @den)

                @num,@den = a,b
                return self
        end

        def == (other)
                if @num == other.num and @den == other.den
                        return true
                else
                        return false
                end
        end

        def abs
                a = @num.abs
                b = @den.abs
                return Fraccion.new(a,b).show_frac
        end

        def reciproco
                a = @den
                b = @num
                return Fraccion.new(a,b).show_frac
        end

        def opuesto
                if (@num<0 and @den>0) then
                 a = @num *(-1)
                 b = @den
                end
        
                if (@den<0 and @num>0) then
                 a = @num
                 b = @den        *(-1)
                end

                if (@num>0 and @den>0) or (@num<0 and @den<0)then
                 a = @num *(-1)
                 b = @den *(-1)
                end

                return Fraccion.new(a,b).show_frac
        end

        def + (other)
                if (@den == other.den)
                        a = @num += other.num
                        b = @den
                else
                        b = @den * other.den
                        a = ((b/@den) * @num) + ((b/other.den) * other.num)
                end

                return Fraccion.new(a, b).simp.show_frac
        end

        def - (other)
                if (@den == other.den)
                        a = @num -= other.num
                        b = @den
                else
                        b = @den * other.den
                        a = ((b/@den) * @num) - ((b/other.den) * other.num)
                end

                return Fraccion.new(a, b).simp.show_frac
        end

        def *(other)
                num=@num*other.num
                den=@den*other.den
                return Fraccion.new(num,den).simp.show_frac
        end

        def /(other)
                num=@num*other.den
                den=@den*other.num
                return Fraccion.new(num,den).simp.show_frac
        end

        def <=>(other)
                return -1 if self.to_f < other.to_f
                return 0 if self.to_f == other.to_f
                return 1 if self.to_f > other.to_f
        end        

        #Modificacion. Multiplicar 2 fracciones y hallar el valor absoluto
        def modif(other)
                num=@num*other.num
                den=@den*other.den
                num=num.abs
                den=den.abs
                return Fraccion.new(num,den).simp.show_frac
        end
end


