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
    # binding.pry

    if Integer(Time.new) < 12
      resp.write "Afternoon"
    else
      resp.write "Morning"
    end

    resp.finish
  end

end
