class Application

  def call(env)
    resp = Rack::Response.new
    
    time = 
    if time < 12 
      resp.write "#{time}\n"
      resp.write "Good Morning!"
    else
      resp.write "#{time}\n"
      resp.write "Good Afternoon!"
    end

    resp.finish
  end

end