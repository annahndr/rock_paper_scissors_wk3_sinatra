# class Game
#
#
# def self.rock_paper_scissors(hand1, hand2)
#   if hand1 == "rock" && hand2 == "scissors" || hand2 == "rock" && hand1 == "scissors"
#     return "rock wins"
#   elsif hand1 == "scissors" && hand2 == "paper" || hand1 == "paper" && hand2 == "scissors"
#     return "scissors win"
#   elsif hand1 == "paper" && hand2 = "rock" || hand1 == "rock" && hand2 == "paper"
#     return "paper wins"
#   else
#     return "it's a draw"
#   end
# end
#
#
# end


class Game

  def initialize(hand1, hand2)
    @hand1 = hand1
    @hand2 = hand2
  end

  def check_winner()
    if @hand1 == "rock" && @hand2 == "scissors"
      return "rock wins for player 1"
    elsif @hand1 == "scissors" && @hand2 == "rock"
      return "rock wins for player 2"
    elsif @hand1 == "scissors" && @hand2 == "paper"
      return "scissors win for player 1"
    elsif @hand1 == "paper" && @hand2 == "scissors"
      return "scissors win for player 2"
    elsif @hand1 == "rock" && @hand2 == "paper"
      return "paper wins for player 2"
    elsif @hand1 == "paper" && @hand2 == "rock"
      return "paper wins for player 1"
    else
      return "a draw"
    end
  end
    #
    #   || @hand2 == "rock" && hand1 == "scissors"
    #   return "rock wins"
    # elsif hand1 == "scissors" && hand2 == "paper" || hand1 == "paper" && hand2 == "scissors"
    #   return "scissors win"
    # elsif hand1 == "paper" && hand2 = "rock" || hand1 == "rock" && hand2 == "paper"
    #   return "paper wins"
    # else
    #   return "it's a draw"
    # end



end
