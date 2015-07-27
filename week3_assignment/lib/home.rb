class Home
  include Renderer
  include Caller
  
  def content(env = nil)
    content = %Q{
    
    <section>
      <h2>Home</h2>

      <p>
        I am currently a student looking for employment in the development world. 
        Learn <a href="/about">About</a> what motivates me.
        
      </p>

      <p>
        If you are intersted in learning more about the skills I have to offer your company, 
        please feel free to look at my <a href="/resume">Resume</a>.
      </p>

      <p>
        If you have any questions or would like more information, please <a href="/resume">Contact</a> me.
      </p>
    </section>
    }
  end
end