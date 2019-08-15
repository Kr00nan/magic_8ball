require_relative "m8b_classes"
require "colorize"
require "pry"

class Main
  def initialize
    @magic_eight_ball = MagicEightBall.new
    @answer = ""
    puts "\nWelcome to the Magic Eight Ball"
    menu
  end

  def menu
    puts "\nType a question to get an answer, or type QUIT to end the program"
    print "> "
    @answer = gets.strip

    case @answer
    when "QUIT"
      exit_program
    when "add_answers"
      puts "What answer would you like to add to the list of responses?"
      puts "> "
      user_response = gets.strip
      if @magic_eight_ball.check(user_response)
        puts "\nThat answer already exists."
      else
        puts "Adding #{user_response} to the list of responses."
        @magic_eight_ball.add(user_response)
      end
      menu
    when "reset_answers"
      @magic_eight_ball.reset
      puts "Magic Eight Ball answers have been reset."
      menu
    when "print_answers"
      @magic_eight_ball.display
      sleep(2)
      menu
    else
      @magic_eight_ball.shake
    end
    menu

  end
  
  def exit_program 
    puts "\nHave a good day!"
    puts
    exit
  end

end

Main.new