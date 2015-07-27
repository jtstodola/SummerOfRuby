class About
  include Renderer
  include Caller
  
  def content(env = nil)
    content = %Q{
    <img src="/images/me.jpeg" width=300>
    <section>
      <h2>About Jessica Stodola</h2>

      <p>
        I am a geographer, a programmer, and an advocate for women in STEM fields. 
        Life has taken me down a variety of paths, each teaching me something new and 
        building upon the experiences of the previous. I have created maps for the Boy 
        Scouts of America, created web pages just for fun, expanded my knowledge of 
        programming in my "off-time", and hosted a Facebook page devoted to <a 
        href="https://www.facebook.com/groups/WomenInInformationTechnologyInTheChippewaValley/">
        Women in Information Technology</a>.
      </p>

      <p>
        Throughout my journey in education and in life, the most valuable lesson I have learned 
        is that education doesn't stop when class ends. Life is a continuous learning
        experience and it is how we choose to approach those learning experiences that will
        either enrich or impoverish our lives.
      </p>

      <p>
        One of my favorite quotes is by Albert Einstein, "A person who never made a mistake
        never tried anything new." As a programmer, I have become accustomed to making mistakes;
        it's how we learn. I find enjoyment in learning how to make my programming more susinct, complex,
        user-friendly, and asthetically pleasing.
      </p>
    </section>
    }
  end
end