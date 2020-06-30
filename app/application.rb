class Application

  def call(env)
    resp = Rack::Response.new
    
    time = Kernel.rand(1..24)
    if time < 12 
      resp.write "#{time}"
      resp.write "Good Morning!"
    else
      resp.write "#{time}"
      resp.write "Good Afternoon!"
    end

    resp.finish
  end

end