class Contact
  include Renderer
  include Caller  
  
  def content(env = nil)
    header = "Contact"
    content = %Q{
      <h2>#{header}</h2>
      <form method="POST" action="/submit_contact">
        <table>
          <tr>
            <td><label for="name">Name: </label></td>
            <td><input id="name" type="text" name="name"></td>
          </tr>

          <tr>
            <td><label for="email_address">Email Address: </label></td>
            <td><input id="email_address" type="text" name="email_address"></td>
          </tr>
        </table>

        <label for="message">Message: </label><br>
        <textarea id = "message" name="message" cols="50" rows="5">Enter your message here.</textarea><br>

        <input type="submit" value="Submit">
      </form>
      }
  end
end