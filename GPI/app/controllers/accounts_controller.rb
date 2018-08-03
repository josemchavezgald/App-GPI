class AccountsController < ApplicationController
	layout 'application'
	def index
		@gg = Account.all

	end

	def new
		@account= Account.new 
	end

	def create
		#render plain: params[:account].inspect
		 
		@account = Account.create(account_params)
		
		if @account.save
			return redirect_to action: "index"
		end
		render :new
	end

	def show
		@account = Account.all
	end

	def edit 
		@account = Account.find(params[:id])
	end

	def update
		@account = Account.find(params[:id])
		@account.update account_params
		redirect_to action: "index"
	end

	def destroy
		redirect_to action: "index"
		@account = Account.find(params[:id])
		@account.destroy
		 
	end

	def account_params	
		params.require(:account).permit(:nombre,:contrasena,:tipo)
	end

end