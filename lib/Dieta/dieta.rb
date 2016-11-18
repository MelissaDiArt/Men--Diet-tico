module Dieta
	class Dieta
		attr_reader :t, :ing, :pl, :v, :p, :g, :h
		def initialize(t,ing,pl,v,p,g,h)
			@t, @ing, @pl, @v, @p, @g, @h = t, ing, pl, v, p, g, h
		end
		def get_plato(i)
			@pl[i]
		end
		def to_s
			s = "#{@t} (#{@ing})\n"
			i=0
			while i<@pl.length
				s << "- #{@pl[i][0]}, #{@pl[i][1]}, #{@pl[i][2]}\n"
				i+=1
			end
			s << "V.C.T | %\t#{@v} kcal | #{@p}% - #{@g}% - #{@h}%\n"
		end
        end

	class Edad < Dieta
		def initialize(t,ing,pl,v,p,g,h,e)
			super(t,ing,pl,v,p,g,h)
			@edad = e
		end

		def mostrar_edad()
			s = self.to_s  		
			s << "#{@edad}"
		end	
	end

	class Alimentos < Dieta
		def initialize(t,ing,pl,v,p,g,h,a)
			super(t,ing,pl,v,p,g,h)
			@alimentos = a
		end

		def mostrar_alimentos()
			s = self.to_s
			s << "#{@alimentos}"
		end
	end   
end


