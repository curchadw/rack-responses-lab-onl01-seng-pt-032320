class Application

  def call(env)
    resp = Rack::Response.new
    
    time = Time.new
    if time.hour < 12 
      puts "Current Time : " + time.inspect
      resp.write "Good Morning!"
    else
      puts "Current Time : " + time.inspect
      resp.write "Good Afternoon!"
    end

    resp.finish
  end

end