require "colorize"
require "pry"

class EightBall
  def initialize
    menu
  end

  def menu
    puts "\nWelcome to the Magic Eight Ball"
    puts "\nType a question to get an answer, or type QUIT to end the program"
    print "> "
    answer = gets.strip
  end
end

EightBall.new