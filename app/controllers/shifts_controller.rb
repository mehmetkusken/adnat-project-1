class ShiftsController < ApplicationController

    def index
        @shifts = Shift.all
    end
   
    def new
        @shift = Shift.new(user: current_user)
    end

    def create
        @shift = Shift.create(shift_params)
        @shift.user = current_user
        if @shift.save
        redirect_to "http://[::1]:3000/shifts"
        else
            render :new
        end
    end
    
    private

    def shift_params
        params.require(:shift).permit(:start, :finish, :break_length)
    end

end
