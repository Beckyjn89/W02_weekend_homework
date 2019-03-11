require("minitest/autorun")
require("minitest/rg")
require_relative("../bar")

class TestBar < MiniTest::Test

  def setup
    @bar = Bar.new
    @bar.add_stock_to_bar("Beer", 4)
  end

  def test_stock_bar

    assert_equal(["Beer"], @bar.bar_stock.keys)
  end

  def test_check_price
    assert_equal(4, @bar.bar_stock["Beer"])
  end

  def test_add_multiple_items_to_bar
    @bar.add_stock_to_bar("Gin and tonic", 5)
    @bar.add_stock_to_bar("Coca Cola", 1)
    actual = @bar.bar_stock.keys
    assert_equal(["Beer", "Gin and tonic", "Coca Cola"], actual)
  end

  def test_check_full_price_list
    @bar.add_stock_to_bar("Gin and tonic", 5)
    @bar.add_stock_to_bar("Coca Cola", 1)
    actual = @bar.bar_stock
    assert_equal({"Beer"=>4, "Gin and tonic"=>5, "Coca Cola"=>1}, actual)
  end

  def test_check_price_of_one_drink
    @bar.add_stock_to_bar("Gin and tonic", 5)
    @bar.add_stock_to_bar("Coca Cola", 1)
    actual = @bar.check_drink_price("Coca Cola")
    assert_equal(1, actual)
  end

end
