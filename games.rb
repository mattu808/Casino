class Slots_game
  @@bet
  def start_game(bet)
    puts "Welcome to Slots!"
    @@bet = bet
    slots_loop
  end
  def slots_loop
    check_values(pull_lever)
  end
  def pull_lever 
    slot_values = []
    for i in 1..3
      temp_value = rand(1..9)
      #make numbers more or less rare?
      slot_values.push(temp_value)
    end
    puts slot_values
    return slot_values
  end
  def check_values(values)
    if values[0] == values[1] && values[0] == values[2]
      puts winnings(values[0], true)
    elsif values[0] == values[1] || values[1] == values[2]
      puts winnings(values[1], false)
    end
  end
  def winnings(winning_number, is_jackpot)
    if is_jackpot
      return (@@bet) * 1.6
    else
      return (@@bet) * 1.3
    end
  end
end

game = Slots_game.new

game.start_game(50)

