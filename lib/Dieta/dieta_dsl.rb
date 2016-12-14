module Dieta

	class Menu_dsl
		    
		    
	attr_accessor :titular, :ingestas, :platos, :valores

 	def initialize(nombre, &block)
      		self.ingestas = []
      		self.platos = []
      		self.valores = []

     		 if block_given?
        		if block.arity == 1
          			yield self
        		else
        		 instance_eval(&block)
        		end
      		end
  	end

	def titulo(nombre)
       		@titular = nombre
    	end
	
	def ingesta(options = {})
      		ingestas << options[:min] if options[:min]
      		ingestas << options[:max] if options[:max]
      		ingestas
    	end

    	def plato(options = {})
      		plato = []
        	puts "Inserting #{options[:gramos]}"
        	plato << " #{options[:descripcion]} |" if options[:descripcion]
        	plato << " #{options[:porcion]} |" if options[:porcion]
        	plato << " #{options[:gramos]} gramos\n\n" if options[:gramos]
        	@platos << plato
    	end

    	def valor(options = {})
      		@valores << options[:vct] if options[:vct]
      		@valores << options[:proteinas] if options[:proteinas]
      		@valores << options[:grasas] if options[:grasas]
      		@valores << options[:hidratos] if options[:hidratos]
      		@valores
    	end


	end
end
