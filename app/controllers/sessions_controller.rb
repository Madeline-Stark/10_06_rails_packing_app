class SessionsController < ApplicationController
    def new

    end 

    def create
       @user = User.find_by(email: params[:email])
       if @user && @user.authenticate(params[:password]) #user exists and gave the right password
            session[:user_id] = @user.id
        #log them in
        #redirect to somewhere...
            redirect_to lists_path
       else
        render :new
       end
    end 

    def destroy

    end
end
