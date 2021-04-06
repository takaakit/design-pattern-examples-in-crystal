# ˅
require "./hand_signal"
require "./strategy"

# ˄

# Calculate a hand from the previous hand stochastically.
class RandomStrategy < Strategy
  # ˅

  # ˄

  def initialize
    # ˅
    # ˄
  end

  def show_hand_signal : HandSignal
    # ˅
    return HandSignal.get_hand(Random.new.rand(3))
    # ˄
  end

  def notify_game_result(result : GameResultType, own_hand : HandSignal, opponents_hand : HandSignal)
    # ˅
    # Do nothing
    # ˄
  end

  # ˅
  # ˄
end

# ˅
# ˄
