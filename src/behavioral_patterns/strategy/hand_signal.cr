# ˅

# ˄

class HandSignal
  # ˅

  # ˄

  # Rock
  ROCK = 0

  # Scissors
  SCISSORS = 1

  # Paper
  PAPER = 2

  # Characters of the hands
  @@hands : Array(HandSignal) = [HandSignal.new(ROCK), HandSignal.new(SCISSORS), HandSignal.new(PAPER)]

  # Characters of the hands
  @@name : Array(String) = ["Rock", "Scissors", "Paper"]

  # Values of rock, scissors and paper.
  @value : Int32

  # Get an instance of the hand
  def self.get_hand(hand_value : Int32) : HandSignal
    # ˅
    return @@hands[hand_value]
    # ˄
  end

  getter value

  def initialize(value : Int32)
    # ˅
    @value = value
    # ˄
  end

  # Return true if "this" is stronger than "hand".
  def is_stronger_than(hand : HandSignal) : Bool
    # ˅
    return judge_game(hand) == 1
    # ˄
  end

  # Return false if "this" is weaker than "hand".
  def is_weaker_than(hand : HandSignal) : Bool
    # ˅
    judge_game(hand) == -1
    # ˄
  end

  def to_s : String
    # ˅
    return name[@value]
    # ˄
  end

  # The draw is 0. "this" win is 1. "hand" win is -1.
  private def judge_game(hand : HandSignal) : Int32
    # ˅
    if @value == hand.value
      return 0
    elsif (@value + 1) % 3 == hand.value
      return 1
    else
      return -1
    end
    # ˄
  end

  # ˅
  # ˄
end

# ˅
# ˄
