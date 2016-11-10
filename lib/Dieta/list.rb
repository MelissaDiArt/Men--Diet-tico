Nodo=Struct.new(:v,:s)

class Lista 

	attr_accessor :head
	
	def initialize()
	
		@head = nil
	end

	def insert(valor)
		x = Nodo.new(valor,@head)
		@head = x
	end

end 
