class Timer
  #write your code here
    attr_accessor :seconds
    def initialize
        @seconds = 0
    end
    #SETTER
    def seconds=(value)
        @seconds = value
    end
    #METHOD
    def pad_zeros(second)
        second = "0"+second.to_s
        return second
    end
    def time_string
        if(seconds < 60)
            if(seconds < 10)
                time = "00:00:" + pad_zeros(seconds)
            else
                time="00:00:" + seconds.to_s
            end
            return time
        else
            hour = 0
            min = 0
            new_seconds = seconds
            time = ""
            while new_seconds > 60
                new_seconds -= 60
                min += 1
            end
            while min > 60
                min -= 60
                hour += 1
            end
            if(hour < 10)
                time += pad_zeros(hour) + ':'
            else
                time += hour.to_s
            end
            if(min < 10)
                time += pad_zeros(min) + ':'
            else
                time += min.to_s
            end
            if(new_seconds < 10)
                time += pad_zeros(new_seconds)
            else
                time += new_seconds.to_s
            end
        end
    end
end

timer = Timer.new
timer.seconds = 62
puts timer.time_string
