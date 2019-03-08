require("minitest/autorun")
require("minitest/rg")
require_relative("../guest")

class TestGuest < MiniTest::Test
def setup
  @guest_01 = Guest.new("Freda")
  @guest_02 = Guest.new("Benny")
end

def test_customer_has_name
  assert_equal("Freda", @guest_01.name)
end

end
