require_relative "m8b_classes"
require "colorize"
require "pry"

class Main
  def initialize
    @magic_eight_ball = MagicEightBall.new
    puts "\nWelcome to the Magic Eight Ball"
    menu
  end

  def menu
    puts "\nType a question to get an answer, or type QUIT to end the program"
    print "> "

    case gets.strip
    when "QUIT"
      exit_program
    when "add_answers"
    when "reset_answers"
    when "print_answers"
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