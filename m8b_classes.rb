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

    @user_responses = []

  end

  def shake
    # joins original responses with user added responses
    puts @original_responses.concat(@user_responses).sample
  end

  def check(answer)
    @original_responses.concat(@user_responses).include?(answer)
  end

  def add(answer)
    @user_responses.push(answer)
  end

  def reset
    @user_responses.clear
    binding.pry
    puts "\nUser added answers have been deleted."
  end

  def display
    @original_responses.concat(@user_responses).each {|item| puts item}
  end

end