class CashRegister
  attr_accessor :total,:discount
  def initialize(discount = 0)
    @total = 0
    @discount = discount 
    #@items = []
    
  end 
  
  def add_item(title,price,quantity = 0)
    @title = title
    @price = price
    self.total += @price if quantity == 0 
    self.total += @price * quantity unless quantity == 0 
  end
  
  def apply_discount
    if @discount == 0 
       "There is no discount to apply."
    else
      @total -= (@total*(@discount / 100.0)).to_i
      
      "After the discount, the total comes to $#{@total}."
      
    end 
  end 
end
