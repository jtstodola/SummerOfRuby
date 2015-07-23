require_relative 'lib/item'
require_relative 'lib/cart'
require_relative 'lib/library'

library = Library.new
cart = Cart.new
puts library.display_menu


keep_going = true
while(keep_going) do
  puts "Please choose an item (1 - 5) to add to your Cart: \n"
  book_choice = gets.chop
  book_choice = book_choice.to_i
  
  incorrect_choice = true
  while(incorrect_choice) do
    if (book_choice > 0 && book_choice < 6 && book_choice.to_s != book_choice)
      book_choice = library.books[book_choice - 1]
      book_choice = book_choice.title
      cart.add_item(book_choice, 1)
      incorrect_choice = false
    else
      puts "Please choose a number between 1 - 5"
      book_choice = gets.chop
      book_choice = book_choice.to_i
    end
  end
        
  puts "Would you like to add another item?"
  keep_going = gets.chop == "y" || gets.chop == "Y"
end

puts "Items in your Cart:"
puts cart.total
puts cart.items