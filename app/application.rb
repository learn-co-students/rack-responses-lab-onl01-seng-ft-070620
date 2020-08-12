class Application

    def call(env)
      resp = Rack::Response.new
      
      if Time.now.hour > 11
        time_of_day = "Afternoon"
      else
        time_of_day = "Morning"
      end
   
      resp.write "Good #{time_of_day}!"
  
      resp.finish
    end
  
  end