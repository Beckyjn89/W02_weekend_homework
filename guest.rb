class Guest
  attr_reader :name, :wallet, :ticket

  def initialize(name, wallet)
    @name = name
    @wallet = wallet
    @ticket = "fee paid"
  end

  def pay_entry_fee(room)
    if ((@wallet - room.entry_fee) >= 0)
      @wallet -= room.entry_fee
    else
      @ticket = "unable to pay"
    end
  end

  def has_ticket?
    if @ticket == "fee paid"
      return true
    else
      return false
    end
  end


end
