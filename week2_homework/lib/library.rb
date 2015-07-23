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
