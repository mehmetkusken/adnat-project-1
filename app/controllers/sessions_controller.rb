class SessionsController < ApplicationController
    def logout
        session.clear
        redirect_to login_path
    end

    def login
       
    end
    def create
        user = User.find_by_email(params[:email])
        if user && user.authenticate(params[:password])
            session[:user_id] = user.id
            redirect_to organisations
        else

            redirect_to login_path
        end
    end
end
