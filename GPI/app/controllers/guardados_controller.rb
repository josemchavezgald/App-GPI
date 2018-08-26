class GuardadosController < ApplicationController
 layout 'application'
	def indexBodega
		@gg = Guardado.all
		
	end 
	def new
		@pedido= Guardado.new 
	end

	def create		 
		@pedido = Guardado.create(guardado_params)
		
		if @pedido.save
			return redirect_to action: "indexBodega"
		end
		render :new
	end

	def edit 
		@enBodega = Guardado.find(params[:id])
		@ff = params[:id]
		@enBodega.update(:detalles =>"enviado")
		@gg = Pedido.where(['estado != "Enviando desde bodega"'])

	end

		def update
		@algo = Guardado.find(params[:aux])
		@algo.update(:recibido => params[:aux1] +" solicitado por:"+ params[:aux2])	
		@account = Pedido.find(params[:id])
		@account.update(:estado =>"Enviando desde bodega")
		redirect_to action: "indexBodega"
	end

	def destroy
		@pedido = Guardado.find(params[:id])
		@pedido.destroy
		redirect_to action: "indexBodega"
		 
	end

	def guardado_params	
		params.require(:guardado).permit(:cosa,:cantidad,:detalles,:recibido)
	end
end
