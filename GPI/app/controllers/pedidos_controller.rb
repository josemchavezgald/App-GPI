class PedidosController < ApplicationController
	layout 'application'
	def index
		@gg = Pedido.where(["solicitante = :u", { u: current_user.email }])

	end

	def indexAdmin
		@gg = Pedido.all
	end
	def indexCompra
		@gg = Pedido.where(['estado = "compra"'])
	end


	def new
		@pedido= Pedido.new 
	end

	def create		 
		@pedido = Pedido.create(pedido_params)
		@pedido.solicitante = current_user.email
		@pedido.estado = "solicitado"
		
		if @pedido.save
			return redirect_to action: "index"
		end
		render :new
	end

	def show
		@pedido = Pedido.all
	end

	def edit 
		@pedido = Pedido.find(params[:id])
	end

	def update
		@pedido = Pedido.find(params[:id])	
		@pedido.update pedido_params
		redirect_to action: "indexAdmin"
	end

	def destroy
		redirect_to action: "indexAdmin"
		@pedido = Pedido.find(params[:id])
		@pedido.destroy
		 
	end

	def pedido_params	
		params.require(:pedido).permit(:material,:cantidad,:detalles,:estado,:trabajo,:codigo,:unidad)
	end
end
