class Hi_low

@@bet = 50



def start_game
 puts 'Do you want to play Hi-Low [Y/N]'
   @user_input = gets.upcase.chomp
     if @user_input == 'Y'
       hi_low
     elsif @user_input == 'YES'
       hi_low
     elsif @user_input == 'NO'
      exit
     else @user_input == 'N'
      exit
end
end

# def betting
#   puts 'How much would you like to bet?'
#   @@bet += gets.chomp.to_i
#   hi_low
# end

# end 

def take_from_bet
 @@bet = @@bet
 puts "You are a winner. You won $#{@@bet}"
end 

def take_from_bet_1
  @@bet = @@bet * 0.75
  puts "You are a winner. You won $#{@@bet}"
 end 

 def take_from_bet_2
  @@bet = @@bet * 0.5
  puts "You are a winner. You won $#{@@bet}"
 end

 def take_from_bet_3
  @@bet = @@bet * 0.25
  puts "You are a winner. You won $#{@@bet}"
 end 


def hi_low
  @num = rand (1..50)
  wait_time = (2)
  puts
  puts '_________________________________________________'
  puts 'Guess a number between 1 - 50'
  puts '_________________________________________________'
  puts 'You have 5 chances to guess the correct number.'
  puts 'Make it count!!!'
  puts '_________________________________________________'  
  puts 'What number would you like to pick?'
  # puts @num
  loop do 
    user_answer = gets.chomp.to_i
    puts "You picked #{user_answer}.....Lets see if you are correct."
    puts
    if user_answer == @num
      puts
      puts 'Checking.......'
      sleep (wait_time)
      puts '_________________________________________________'  
      puts 'You are correct!!!'
      puts take_from_bet
      puts 
      start_game
      break
    elsif user_answer > @num
      puts 'Checking.......'
      sleep (wait_time)
      puts '_________________________________________________'  
      puts
      puts "You need to chose a lower number!!!"
      hi_low_1
      break
    else user_answer < @num
      puts 'Checking.......'
      sleep (wait_time)
      puts '_________________________________________________'  
      puts "You need to choose a higher number!!!"
      hi_low_1
      break
    end
  end
end

  def hi_low_1
    @num
    wait_time = (2)
    puts 'You have 4 chances left.'
    puts 'What is the next number that you would like?'
    loop do 
      user_answer = gets.chomp.to_i
      puts "You picked #{user_answer}.....Lets see if you are correct."
      if user_answer == @num
        puts 'Checking.......'
        sleep (wait_time)
        puts '_________________________________________________'  
        puts 'You are correct!!!'
        puts take_from_bet_1
        start_game
        break
      elsif user_answer > @num
        puts 'Checking.......'
        sleep (wait_time)
        puts '_________________________________________________'  
        puts "You need to chose a lower number!!!"
        hi_low_2
        break
      else user_answer < @num
        puts 'Checking.......'
        sleep (wait_time)
        puts '_________________________________________________'  
        puts "You need to choose a higher number!!!"
        hi_low_2
        break
      end
    end
  end

    def hi_low_2
      @num
      wait_time = (2)
      puts 'You have 3 chances left.'
      puts 'What is the next number that you would like?'
      loop do 
        user_answer = gets.chomp.to_i
        puts "You picked #{user_answer}.....Lets see if you are correct."
        if user_answer == @num
          puts 'Checking.......'
          sleep (wait_time)
          puts '_________________________________________________'  
          puts 'You are correct!!!'
          puts take_from_bet_2
          start_game
          break
        elsif user_answer > @num
          puts 'Checking.......'
          sleep (wait_time)
          puts '_________________________________________________'  
          puts "You need to chose a lower number!!!"
          hi_low_3
          break
        else user_answer < @num
          puts 'Checking.......'
          sleep (wait_time)
          puts '_________________________________________________'  
          puts "You need to choose a higher number!!!"
          hi_low_3
          break
        end
      end
    end

      def hi_low_3
        @num
        wait_time = (2)
        puts 'You have 2 chances left.'
        puts 'What is the next number that you would like?'
        loop do 
          user_answer = gets.chomp.to_i
          puts "You picked #{user_answer}.....Lets see if you are correct."
          if user_answer == @num
            puts 'Checking.......'
            sleep (wait_time)
            puts '_________________________________________________'  
            puts 'You are correct!!!'
            puts take_from_bet_3
            start_game
            break
          elsif user_answer > @num
            puts 'Checking.......'
            sleep (wait_time)
            puts '_________________________________________________'  
            puts "You need to chose a lower number!!!"
            hi_low_4
            break
          else user_answer < @num
            puts 'Checking.......'
            sleep (wait_time)
            puts '_________________________________________________'  
            puts "You need to choose a higher number!!!"
            hi_low_4
            break
          end
        end
      end

        def hi_low_4
          @num
          wait_time = (2)
          puts 'Last chances to guess the correct number. Make it count!!!!'
          puts 'What is the last number?'
          loop do 
            user_answer = gets.chomp.to_i
            puts "You picked #{user_answer}.....Lets see if you are correct."
            if user_answer == @num
              puts 'Checking.......'
              sleep (wait_time)
              puts '_________________________________________________'  
              puts 'You are correct!!!'
              puts take_from_bet
              start_game
              break
            elsif user_answer > @num
              puts 'Checking.......'
              sleep (wait_time)
              puts '_________________________________________________'  
              puts "You are a loser!!!"
              puts "The number was #{@num} better luck next time."
              break
            elsif user_answer < @num
              puts 'Checking.......'
              sleep (wait_time)
              puts '_________________________________________________'  
              puts "You are a loser!!!"
              puts "The number was #{@num} better luck next time."
              
              start_game
              break
            end
          end

   end 
end
game = Hi_low.new
game.start_game
