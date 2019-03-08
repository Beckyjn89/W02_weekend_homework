require("minitest/autorun")
require("minitest/rg")
require_relative("../guest")
require_relative("../room")

class TestGuest < MiniTest::Test
def setup
  @guest_01 = Guest.new("Anni-Frid", 25)
  @guest_02 = Guest.new("Benny", 20)
  @guest_03 = Guest.new("Agnetha", 25)
  @guest_04 = Guest.new("Bjorn", 20)
  @guest_05 = Guest.new("Freda", 4)

  @room_01 = Room.new("Room 1", 4)

end

def test_customer_has_name
  assert_equal("Anni-Frid", @guest_01.name)
end

def test_customer_has_money
  assert_equal(20, @guest_02.wallet)
end

def test_customer_has_paid_entry_fee
  actual_return =  @guest_02.pay_entry_fee(@room_01)
  actual = @guest_02.wallet
  assert_equal(15, actual)
  assert_equal("fee paid", actual_return)
end

def test_customer_cant_pay_entry_fee
  actual_return = @guest_05.pay_entry_fee(@room_01)
  actual_wallet = @guest_05.wallet
  assert_equal("unable to pay", actual_return)
  assert_equal(4, actual_wallet)
end

end
