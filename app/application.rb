class Application
    def call(env)
        resp = Rack::Response.new
        current_time = Time.now

        if current_time.to_i < Time.parse("12pm").to_i
            resp.write "Good Morning!"
        else
            # binding.pry
            resp.write "Good Afternoon!"
        end

        resp.finish
    end
end