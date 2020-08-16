class Application
 
    def call(env)
      resp = Rack::Response.new

      t = Time.new
   
      if Time.now.hour < 12
        resp.write "Good Morning!"
      else
        resp.write "Good Afternoon!"
      end
   
      resp.write "The time is #{t.hour}:#{t.min}"
   
      resp.finish
    end
   
  end

