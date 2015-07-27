require 'rack'


require_relative 'caller'
require_relative 'renderer'

require_relative 'home'
require_relative 'about_me'
require_relative 'resume'
require_relative 'contact'
require_relative 'submit_contact'

require_relative 'footer'
require_relative 'header'

class Application
  def self.run
    Rack::Builder.new do
      use Header
      use Footer

      map "/" do
        run Home.new
      end
      
      map "/about" do
        run About.new
      end
      
      map "/resume" do
        run Resume.new
      end
      
      map "/contact" do
        run Contact.new
      end
      
      map "/submit_contact" do
        run SubmitContact.new
      end
    end
  end
end