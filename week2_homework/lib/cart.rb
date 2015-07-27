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

