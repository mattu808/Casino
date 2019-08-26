
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

def welcome_method
  puts "Welcome to online Casino"
  puts "\n"
  puts "What Games would you like to play?"
  puts "\n"
  puts "1) Slot"
  puts '\n'
  puts "2) Highs / Lows"
  game_choice_methods
end

def game_choice_methods
  user_game_choice = gets.to_i
  case user_game_choice
  when 1
    slot_game_method
  when 2
    high_and_low_game_method
end
