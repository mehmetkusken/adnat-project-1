module ShiftsHelper
    def time_diff(start_time, end_time)
        seconds_diff = (start_time - end_time).to_i.abs
        hours = seconds_diff / 3600
    end
end
