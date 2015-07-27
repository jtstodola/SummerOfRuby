module Renderer
  def render_page(content)
    [200, {"Content-type" => "text/html"}, [content] ]
  end
end