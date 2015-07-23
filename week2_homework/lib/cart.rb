class Item
  attr_accessor :title, :price
  
  def initialize(title, price)
    @title = title
    @price = price
  end
end

class Library
  attr_reader :books, :name, :quantity
  
  def initialize
    @books = []
    @books << Item.new("Pragmatic Programmer\t", 32)
    @books << Item.new("Web Development Recipes", 24)
    @books << Item.new("Hello, Android\t", 25)
    @books << Item.new("iOS 8 SDK Development", 25)
    @books << Item.new("Programming Ruby 1.9 & 2.0", 28)
  end
  
  def display_menu
    output = ""
    
    @books.each_with_index {|book, index| 
      output << "#{index + 1}. #{book.title}\t$#{"%.2f" % book.price}\n"}
    output
  end
end
  
class OutsideParametersError < StandardError
  def to_s
    "Please enter a number between 1 - 5."
  end
end

class Cart 
  attr_accessor :total
  attr_reader :cart, :items, :item
  
  def initialize
    @cart = []
    @total = 0
    @item = {}
  end

  
  def add_item(title, qty)
    @item = {title: title, quantity: qty}
    
# This doesn't work
#    if @item.includes?(title)
#      @item[:title] += qty
#    else
#      @cart << @item
#    end
    @cart << @item
  end
  
  def total_price
    total = 0
    @cart.each { |line_item| total += line_item[:quantity] * line_item[:item].price }
    # This doesn't work, because it can't access price.
    total
  end
  
  def total
    total_items = 0
    @cart.each { |x| x.each { |key, val| total_items += val.to_i } } 
    total_items
  end
  
  def items
    output = ""
    @cart.each_with_index {|item, index| 
      output << "Item #{index + 1}. #{item[:title]} Quantity: #{item[:quantity]}\n" }
    output
  end
  
end

# Goes into app.rb
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
  keep_going = gets.chop
  keep_going = keep_going == "y" || keep_going == "Y"
end

puts "Items in your Cart: #{cart.total}" 
puts cart.items
#puts"Total price: ${"%.2f" % total_price}"