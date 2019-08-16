class MagicEightBall
  def initialize
    @original_responses = [
      "It is certain.",
      "It is decidedly so.",
      "Without a doubt",
      "Yes - definitely.",
      "As I see it, yes.",
      "Most likely.",
      "Outlook good.",
      "Yes.",
      "Signs point to yes.",
      "Reply hazy, try again.",
      "Ask again later.",
      "Better not tell you now.",
      "Cannot predict now.",
      "Concentrate and ask again.",
      "Don't count on it.",
      "My reply is no.",
      "My sources say no.",
      "Outlook not so good.",
      "Very doubtful."
    ]

    @working_responses = Array.new(@original_responses)

  end

  def shake
    puts @working_responses.sample
  end

  def add
    puts "What answer would you like to add to the list of responses?".colorize(:yellow)
    print "> "
    user_response = gets.strip
    if @working_responses.include?(user_response)
      puts "\nThat answer already exists.".colorize(:red)
      puts "Returning to main menu...".colorize(:red)
    else
      puts "\nAdding '#{user_response}' to the list of responses.".colorize(:green)
      @working_responses.push(user_response)
    end
  end

  def reset
    @working_responses.clear
    @working_responses = Array.new(@original_responses)
    puts "Magic Eight Ball answers have been reset."
  end

  def display
    @working_responses.each {|item| puts item.colorize(:cyan)}
  end

end