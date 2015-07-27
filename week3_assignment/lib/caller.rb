module Caller
  def call(env)  
    render_page(content(env))   
  end
end