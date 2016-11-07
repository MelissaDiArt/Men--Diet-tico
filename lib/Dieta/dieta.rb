module Dieta
	class Dieta
		attr_reader :t, :ing, :pl, :v, :p, :g, :h
		def initialize(t,ing,pl,v,p,g,h)
			@t, @ing, @pl, @v, @p, @g, @h = t, ing, pl, v, p, g, h
		end
		def get_plato(i)
			@pl[i]
		end
        end
   
end
