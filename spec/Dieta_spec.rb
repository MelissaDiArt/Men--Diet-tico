require "spec_helper"
require "./lib/dieta.rb"

describe Dieta do 

	context "Menu de dieta" do

		before :each do
			@menu = Dieta::Dieta.new('DESAYUNO','15%',[['Manzana','1 unidad','60gr'],['Pera','1 unidad','60gr']],[400,10,20,10])
		end

		it 'Debe existir un título' do
			expect(@menu.t).to eq('DESAYUNO')
		end
		
		it 'Debe existir un porcentaje de ingesta diaria' do
			expect(@menu.ing).to eq('15%')
		end

		it 'Debe mostrar un conjunto de platos' do 
			expect(@menu.pl).to eq([['Manzana','1 unidad','60gr'],['Pera','1 unidad','60gr']])
		end

		it 'Debe mostrar valores nutricionales' do
			expect(@menu.v).to eq([400,10,20,10])
		end
	end
end
