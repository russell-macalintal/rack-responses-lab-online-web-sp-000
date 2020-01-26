class Application
  def call(env)
    resp = Rack::Response.new
    time = Time.now
    resp.write "#{time}\n"
    resp.write "#{time.hour}\n"

    if time.hour.to_i < 12
      resp.write "Good Morning!"
    else
      resp.write "Good AFternoon!"
    end

    resp.finish
  end
end
