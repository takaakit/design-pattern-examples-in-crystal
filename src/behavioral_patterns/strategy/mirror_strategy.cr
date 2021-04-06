# ˅
require "./hand_signal"
require "./strategy"

# ˄

# When winning a game, show the same hand at the next time.
class MirrorStrategy < Strategy
  # ˅

  # ˄

  @pre_opponents_hand : HandSignal

  def initialize
    # ˅
    @pre_opponents_hand = HandSignal.get_hand(HandSignal::ROCK)
    # ˄
  end

  def show_hand_signal : HandSignal
    # ˅
    return @pre_opponents_hand
    # ˄
  end

  def notify_game_result(result : GameResultType, own_hand : HandSignal, opponents_hand : HandSignal)
    # ˅
    @pre_opponents_hand = opponents_hand
    # ˄
  end

  # ˅
  # ˄
end

# ˅
# ˄
