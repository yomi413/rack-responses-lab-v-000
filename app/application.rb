class Application

  def call(env)
    resp = Rack::Response.new

    # num_1 = Kernel.rand(1..20)
    # num_2 = Kernel.rand(1..20)
    # num_3 = Kernel.rand(1..20)
    #
    # resp.write "#{num_1}\n"
    # resp.write "#{num_2}\n"
    # resp.write "#{num_3}\n"
    binding.pry

    time = Time.now
    time.hour(0..23)


    if time.hour > 0 && time.hour < 12
      resp.write "Morning"
    else
      resp.write "Afternoon"
    end

    resp.finish
  end

end
