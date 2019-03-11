class Bar
  attr_reader :drink, :price, :bar_stock

  def initialize()
    @bar_stock = {}
    @drink = drink
    @price = price
  end

  def add_stock_to_bar(drink, price)
    @bar_stock[drink] = price
  end

  def check_drink_price(drink)
    (self).bar_stock[drink]
  end

end
