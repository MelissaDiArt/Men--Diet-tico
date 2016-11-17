Nodo=Struct.new(:v,:s,:p)

class Lista_DE

	attr_accessor :head
	
	def initialize()
	
		@head = Nodo.new(nil,nil,nil)
	end

	def insert_ini(valor)
		x = Nodo.new(valor,@head,@prev)
		@head = x
		@prev = nil
	end

	def extract_ini()
		aux = @head[:v]
		@head = @head[:s]
		aux
	end
	
	def to_s()
		z=1
		aux=@head
		m =""
		while(aux[:s] != nil)

			m += "#{z}) #{aux[:v].to_s}\n"
			aux = aux[:s]
			z += 1
		end
		m
	end

end 
