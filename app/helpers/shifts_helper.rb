module ShiftsHelper
    def time_diff(start_time, end_time , dakika )
        seconds_diff = (start_time - end_time).to_i.abs
        minutes = seconds_diff / 60
        sonuc = (minutes - dakika).to_f
        tam = (sonuc / 60).to_f   
    end

    def cost(rate,hours)
        total = (hours * rate).to_f
    end
end
