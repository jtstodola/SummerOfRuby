class Header
  def initialize(app)
    @app = app
  end
  
  def call(env)
    status, headers, response = @app.call(env)
    
    response_body = %Q{
      <!DOCTYPE html>
      <html lang="en-us">
        <head>
          <meta charset="utf-8">
          <title>Jessica Stodola</title>
        </head>
      <body>
        <header>My Web Site</header>
        <nav>
          <ul>
            <li><a href="/">Home</a></li>
            <li><a href="/about">About</a></li>
            <li><a href="/resume">Resume</a></li>
            <li><a href="/contact">Contact</a></li>
          </ul>
        </nav>
    }
    
    response_body << response.join("/n")
    
    headers["Content-length"] = response_body.length.to_s
    
    [status, headers, [response_body] ]
  end
  
end