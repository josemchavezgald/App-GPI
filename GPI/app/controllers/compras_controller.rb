class ComprasController < ApplicationController
layout 'application'
	def index
		@gg = Compra.all

	end
	def new
		@pedido= Compra.new 
	end
	def compras2
		file = File.read('laudus/db.json')
		@test = JSON.parse(file)
	end

	def create		 
		@pedido = Compra.create(compra_params)
		
		if @pedido.save
			return redirect_to action: "index"
		end
		render :new
	end

	def destroy
		redirect_to action: "index"
		@pedido = Compra.find(params[:id])
		@pedido.destroy
		 
	end

	def compra_params	
		params.require(:compra).permit(:producto,:provedor,:precio)
	end
end
