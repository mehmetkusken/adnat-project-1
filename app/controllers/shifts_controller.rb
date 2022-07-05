class ShiftsController < ApplicationController

    def index
        @shifts = Shift.all
    end
   
    def new
        @shift = Shift.new
    end

    def create
        @shift = Shift.create(shift_params)
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
