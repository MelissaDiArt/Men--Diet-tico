require "spec_helper"
require "./lib/dieta.rb"

describe Dieta do 

	context "Menu de dieta" do

		before :each do
			@menu = Dieta::Dieta.new('DESAYUNO','15%',[['Manzana','1 unidad','60gr'],['Pera','1 unidad','60gr']])
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
	end
end
