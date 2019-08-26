class Roulette

@winning_number = {}

def winning_number_method
  number = rand(0..50)
  if number == 0
    @color = "green"
    @odd_or_even = "odd"
  elsif number % 2 == 0
    @color = "black"
    @odd_or_even = "even"
  elsif number % 2 != 0
    @color = "red"
    @odd_or_even = "odd"
  end
  @winning_number = {
    number: number,
    color: @color,
    odd_or_even: @odd_or_even,
  }

end


def start_game
 puts "do you wanna to continue?"
 puts "1) Yes"
 puts "2) No"
 continued = gets.to_i
 if continued == 1
   bet_method
 elsif continued == 2
   `exit`
end
end



def bet_method
puts "what would you pick?"
puts "1) Odd or even"
puts "2) Color"
puts "3) numbers"
puts "4) 0 Green"
user_game_choice
end

def user_game_choice
  @user_game_choice = gets.to_i
  case @user_game_choice
  when 1
  puts "pick odd or even"
  puts "1)Odd"
  puts "2)even"
  @user_game_odd_or_even = gets.to_i
  if @user_game_odd_or_even == 1
    @user_game_odd_or_even = "odd"
      user_bet_choice_method

  elsif @user_game_odd_or_evens == 2
    @user_game_odd_or_even = "even"
    user_bet_choice_method
  end
  when 2
    puts "pick a color"
    puts "1) green"
    puts "2) black"
    puts "3) red"
  @user_game_color = gets.to_i
  if @user_game_color == 1
    @user_game_color = "green"
    user_bet_choice_method
  elsif @user_game_color == 2
    @user_game_color = "black"
    user_bet_choice_method
  elsif @user_game_color == 3
    @user_game_color = "red"
    user_bet_choice_method
    end
when 3
    puts "pick a number from 1-50"
    @user_game_number = gets.to_i
    user_bet_choice_method
when 4
    puts "pick green 0"
    puts "1)Yes"
    puts "2)No"
    @user_green_0 = gets.to_i
    if @user_green_0 == 1
    @user_green_0 == "0"
    user_bet_choice_method
elsif @user_green_0 == 2
    roulette_start
  end
end
end

def user_bet_choice_method
  if @user_game_choice == 1
    puts "you chosen #{@user_game_odd_or_even}"
    @user_final_bet = @user_game_odd_or_even
    final_bet_method
  elsif @user_game_choice == 2
    puts "you chosen #{@user_game_color}"
    @user_final_bet = @user_game_color
    final_bet_method
  elsif @user_game_choice == 3
    puts "you chosen #{@user_game_number}"
    @user_final_bet = @user_game_number
    final_bet_method
  elsif @user_game_choice == 4
    puts "you have chosen #{@user_green_0}"
    @user_final_bet = @user_green_0
    final_bet_method
  end

end

def final_bet_method
  winning_number_method
  if @user_final_bet == @winning_number[:number] || @user_final_bet == @winning_number[:color] || @user_final_bet == @winning_number[:odd_or_even]
    puts "congrats, you win!"

  elsif
    puts "sorry, you lose, try again"

  end
  start_game
end
end


game = Roulette.new
game.start_game
