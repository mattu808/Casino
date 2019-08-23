# Lobby
  # Deposit
  # Total
  # Games
  # Exit
# Deposit  
#   Add
#   Withdraw


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

@player
def player_name
  puts 'What is your name?'
  name = gets.strip
  puts "Welcome #{name} To The Best Casino in the World!!!!"
  @player = Player.new(name)
end

player_name

