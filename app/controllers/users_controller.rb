class UsersController < ApplicationController
    before_action :set_organisation
    def new
        @organisation = Organisation.find(params[:organisation_id])
        @user = User.new(organisation: @organisation)
    end

    def create
        @organisation = Organisation.find(params[:organisation_id])
       @user = @organisation.users.build(user_params)
       if @user.save
        session[:user_id] = @user.id
        redirect_to "http://[::1]:3000/organisations" 
       else
        render :new
       end
    end

    def show
        @user = User.find(params[:id])
    end

    private
    

    def user_params
        params.require(:user).permit(:name, :email, :password, :password_confirmation )
    end

    private
    def set_organisation
        @organisation = Organisation.find(params[:organisation_id]) if params[:organisation_id]
    end
end
