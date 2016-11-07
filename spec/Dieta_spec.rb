require "spec_helper"
require "./lib/dieta.rb"

describe Dieta do 

	context "Menu de dieta" do

		before:each do
			menu=Dieta.new(['DESAYUNO'])
		end

		it 'Debe existir un título' do
			expect(menu.t).to eq(['DESAYUNO'])
		end
	end
end
