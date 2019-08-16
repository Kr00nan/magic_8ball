require_relative "m8b_classes"
require "colorize"
require "pry"

class Main
  def initialize
    @magic_eight_ball = MagicEightBall.new
    @answer = ""
    puts "\nWelcome to the Magic Eight Ball".colorize(:blue)
    menu
  end

  def menu
    puts "\nType a question to get an answer, or type QUIT to end the program".colorize(:blue)
    print "> "
    @answer = gets.strip

    case @answer
    when "QUIT"
      exit_program
    when "add_answers"
      @magic_eight_ball.add
      menu
    when "reset_answers"
      @magic_eight_ball.reset
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
    puts "\nHave a good day!".colorize(:blue)
    puts
    exit
  end

end

Main.new