require "spec_helper"
require "dieta"
=begin
context " Pruebas totales" do
	before :all do
                        
                @desayuno = Dieta::Dieta.new('DESAYUNO','15%',[['Manzana','1 unidad','60gr'],['Pera','1 unidad','60gr']],'400','10','20','10')
		@almuerzo = Dieta::Dieta.new('ALMUERZO','15%',[['Manzana','1 unidad','60gr'],['Pera','1 unidad','60gr']],'400','10','20','10')
	 	@merienda = Dieta::Dieta.new('MERIENDA','15%',[['Manzana','1 unidad','60gr'],['Pera','1 unidad','60gr']],'400','10','20','10')
		@cena = Dieta::Dieta.new('CENA','15%',[['Manzana','1 unidad','60gr'],['Pera','1 unidad','60gr']],'400','10','20','10')
		@lista1 = Lista.new()
	end
		
	describe Nodo do

                it 'Debe existir un valor y un siguiente' do
                        expect(@lista1.head[:v])
                        expect(@lista1.head[:s])
                end
        end

	describe Lista do

        	context 'Pruebas de la lista' do
      
                	it'Insertar un elemento a la lista' do
                        	@lista1.insert(@desayuno)
                        	expect(@lista1.head[:v]).to have_attributes(:t => 'DESAYUNO', :ing => '15%', :pl =>[['Manzana','1 unidad','60gr'],['Pera','1 unidad','60gr']], :v => '400', :p => '10', :g => '20', :h => '10')
                	end

                	it 'Insertar varios elementos en la lista' do
                        	@lista1.insert(@almuerzo)
                        	expect(@lista1.head[:v]).to have_attributes(:t => 'ALMUERZO', :ing => '15%', :pl =>[['Manzana','1 unidad','60gr'],['Pera','1 unidad','60gr']], :v => '400', :p => '10', :g => '20', :h => '10')
                        	@lista1.insert(@merienda)
                       		expect(@lista1.head[:v]).to have_attributes(:t => 'MERIENDA', :ing => '15%', :pl =>[['Manzana','1 unidad','60gr'],['Pera','1 unidad','60gr']], :v => '400', :p => '10', :g => '20', :h => '10')
               			@lista1.insert(@cena)
				expect(@lista1.head[:v]).to have_attributes(:t => 'CENA', :ing => '15%', :pl =>[['Manzana','1 unidad','60gr'],['Pera','1 unidad','60gr']], :v => '400', :p => '10', :g => '20', :h => '10')
		 	end

                	it 'Extraer el primer elemento de la lista' do
                	        expect(@lista1.extract()).to have_attributes(:t => 'CENA', :ing => '15%', :pl =>[['Manzana','1 unidad','60gr'],['Pera','1 unidad','60gr']], :v => '400', :p => '10', :g => '20', :h => '10')
                        	expect(@lista1.head[:v]).to have_attributes(:t => 'MERIENDA', :ing => '15%', :pl =>[['Manzana','1 unidad','60gr'],['Pera','1 unidad','60gr']], :v => '400', :p => '10', :g => '20', :h => '10')
                	end

                	it 'Mostrar el valor de la cabeza' do
                        	 expect(@lista1.head[:v]).to have_attributes(:t => 'MERIENDA', :ing => '15%', :pl =>[['Manzana','1 unidad','60gr'],['Pera','1 unidad','60gr']], :v => '400', :p => '10', :g => '20', :h => '10')
                	end

                	it 'Mostrar el contenido' do
                        	expect(@lista1.to_s).to eq("1) MERIENDA (15%)\n- Manzana, 1 unidad, 60gr\n- Pera, 1 unidad, 60gr\nV.C.T | %\t400 kcal | 10% - 20% - 10%\n\n2) ALMUERZO (15%)\n- Manzana, 1 unidad, 60gr\n- Pera, 1 unidad, 60gr\nV.C.T | %\t400 kcal | 10% - 20% - 10%\n\n3) DESAYUNO (15%)\n- Manzana, 1 unidad, 60gr\n- Pera, 1 unidad, 60gr\nV.C.T | %\t400 kcal | 10% - 20% - 10%\n\n")
                	end

        	end

	end
end
=end
describe "Pruebas nodo" do

	context "Debe existir un nodo" do
		before :each do
			@nodo = Nodo.new(1,nil,nil)
		end

		it "Debe existir un nodo con su siguiente, su anterior y su dato" do
			expect(@nodo.v).to eq(1)
			expect(@nodo.s).to eq(nil)
			expect(@nodo.p).to eq(nil) 
	
		end
	end
end

describe Lista_DE do

	context "Pruebas de la lista_DE" do 
	
		before :all do
			@lista_DE1 = Lista_DE.new()
		end

	
		it "Insertar un elemento a la lista" do
		
			@lista_DE1.insert_ini(5)
			expect(@lista_DE1.head[:v]).to eq(5)
		end
	end
end
