# ˅

# ˄

abstract class Strategy
  # ˅

  # ˄

  # Show a hand signal.
  abstract def show_hand_signal : HandSignal

  # Notify a game result.
  abstract def notify_game_result(result : GameResultType, own_hand : HandSignal, opponents_hand : HandSignal)

  # ˅
  # ˄
end

# ˅
# ˄
