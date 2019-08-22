class PlayerBankroll
  attr_accessor :wallet

  def initialize(wallet)
    @wallet = wallet
  end

  def add_to_wallet(amount)
    @wallet += amount;
  end

  def minus_from_wallet(amount)
    @wallet -= amount;
  end
end

class Player
  attr_accessor :name, :bankroll

  def initialize(name)
    @name = name
    start_amount = rand(100..300)
    @bankroll = PlayerBankroll.new(start_amount)
  end
end

