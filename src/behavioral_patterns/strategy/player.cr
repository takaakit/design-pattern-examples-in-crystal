# ˅
require "./strategy"

# ˄

class Player
  # ˅

  # ˄

  @name : String

  @win_count : Int32

  @loss_count : Int32

  @game_count : Int32

  @strategy : Strategy

  def initialize(name : String, strategy : Strategy)
    # ˅
    @name = name
    @win_count = 0
    @loss_count = 0
    @game_count = 0
    @strategy = strategy
    # ˄
  end

  # Show a hand signal from the strategy.
  def show_hand_signal : HandSignal
    # ˅
    return @strategy.show_hand_signal
    # ˄
  end

  # Notify a game result.
  def notify_game_result(result : GameResultType, own_hand : HandSignal, opponents_hand : HandSignal)
    # ˅
    case result
    when GameResultType::WIN
      @win_count += 1
      @game_count += 1
    when GameResultType::LOSS
      @loss_count += 1
      @game_count += 1
    when GameResultType::DRAW
      @game_count += 1
    end

    @strategy.notify_game_result(result, own_hand, opponents_hand)
    # ˄
  end

  def to_s : String
    # ˅
    return "#{@name} [#{@game_count.to_s} games, #{@win_count.to_s} won, #{@loss_count.to_s} lost, #{(@game_count - @win_count - @loss_count).to_s} drew]"
    # ˄
  end

  # ˅
  # ˄
end

# ˅
# ˄
