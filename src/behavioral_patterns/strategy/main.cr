require "./game_result_type"
require "./hand_signal"
require "./player"
require "./mirror_strategy"
require "./random_strategy"

# A game of rock-scissors-paper.
# There are two strategies below.
#
# * When winning a game, show the same hand at the next time.
# * Calculate a hand from the previous hand stochastically.

player1 = Player.new("Emily", MirrorStrategy.new)
player2 = Player.new("James", RandomStrategy.new)

(0..99).each do |i|
  hand_of_player_1 = player1.show_hand_signal
  hand_of_player_2 = player2.show_hand_signal
  
  # Judge win, loss, or draw
  result_of_player_1 = GameResultType::DRAW
  result_of_player_2 = GameResultType::DRAW
  if hand_of_player_1.is_stronger_than(hand_of_player_2)
    puts "Winner: #{player1.to_s}"
    result_of_player_1 = GameResultType::WIN
    result_of_player_2 = GameResultType::LOSS
  elsif hand_of_player_2.is_stronger_than(hand_of_player_1)
    puts "Winner: #{player2.to_s}"
    result_of_player_1 = GameResultType::LOSS
    result_of_player_2 = GameResultType::WIN
  else
    puts "Draw..."
    result_of_player_1 = GameResultType::DRAW
    result_of_player_2 = GameResultType::DRAW
  end
  
  player1.notify_game_result(result_of_player_1, hand_of_player_1, hand_of_player_2)
  player2.notify_game_result(result_of_player_2, hand_of_player_2, hand_of_player_1)
end
puts "RESULT:"
puts player1.to_s
puts player2.to_s
