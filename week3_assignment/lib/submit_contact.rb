class SubmitContact
  include Renderer
  include Caller
  
  def content(env = nil)
    request = Rack::Request.new(env)
    
    if(request.post?)
      name = request.POST["name"]
      email = request.POST["email_address"]
      message = request.POST["message"]

      content = "Name: #{name}\nEmail: #{email}\nMessage: #{message}"
    end
  end

end
