class Guest
  attr_reader :name, :wallet

  def initialize(name, wallet)
    @name = name
    @wallet = wallet
  end

  def pay_entry_fee(room)
    if
    (@wallet - room.entry_fee) >= 0
      @wallet -= room.entry_fee
      return "fee paid"
    else
      return "unable to pay"
    end
  end

  def has_ticket?
    if pay_entry_fee() == "fee paid"
      return true
    else
      return false
    end
  end
end
