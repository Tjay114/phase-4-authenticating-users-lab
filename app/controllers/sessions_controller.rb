class SessionsController < ApplicationController

    #POST create a login
    def create 
        user = User.find_by(username: params[:username])
        session[:user_id] = user.id 
        render json: user  
    end

    def destroy 
        session.delete :user_id
        head :no_content
    end
end
