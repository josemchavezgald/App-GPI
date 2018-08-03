class ValidationsController < ApplicationController
    def validation
		if request.get?
			session[:user_id] = nil
			@user = Account.new
		else
			@user = Account.new(params[:user])
			logged_in_user = @user.try_to_login
			if logged_in_user
				session[:user_id] = @user.id
				redirect_to(:controller => "accounts", :action => "index")
			else
				flash[:notice] = "nombre/password invalidos"
				redirect_to( :controller => "validation", :action => "login")
			end
		end
	end
end

