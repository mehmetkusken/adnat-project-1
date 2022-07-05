class OrganisationsController < ApplicationController
    before_action :set_organisation, only: [:show, :edit, :update, :destroy]
 
    def index
        @organisations = Organisation.all
    end
   
    
    def show
        
    end
    

    def new
        @organisation = Organisation.new
    end

    def create
        @organisation = Organisation.create(organisation_params)
        if @organisation.save
        redirect_to "http://[::1]:3000/organisations"
        else
            render :new
        end
    end
    def edit
       
    end

    def update
        if @organisation.update(organisation_params)
            redirect_to @organisation
        else
            render :update
        end
    end

    def destroy

        @organisation.destroy
        redirect_to "http://[::1]:3000/organisations"
       
    end

      private

    def set_organisation
        @organisation = Organisation.find(params[:id])
    end
    

    def organisation_params
        params.require(:organisation).permit(:name, :hourly_rate)
    end

end
