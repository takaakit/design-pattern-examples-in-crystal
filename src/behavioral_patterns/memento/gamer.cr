# ˅
require "./memento"

# ˄

class Gamer
  # ˅

  # ˄

  # Gamer's money
  @money : Int32

  # Random number generator
  @random : Random

  getter money

  def initialize(money : Int32)
    # ˅
    @money = money
    @random = Random.new
    # ˄
  end

  def create_memento : Memento
    # ˅
    return Memento.new(@money)
    # ˄
  end

  def set_memento(memento : Memento)
    # ˅
    @money = memento.money
    # ˄
  end

  # Play a game
  def play
    # ˅
    dice = @random.rand(1..6) # Shake a dice
    puts "The number of dice is #{dice.to_s}."

    pre_money = @money
    case dice
    when 1, 3, 5
      # In case of odd...Money is halved
      @money = (@money / 2).to_i
      puts "Gamer's money is halved: #{pre_money.to_s} -> #{@money.to_s}"
    when 2, 4, 6
      # In case of even...Money doubles
      @money *= 2
      puts "Gamer's money doubles: #{pre_money.to_s} -> #{@money.to_s}"
    else
      # Other...Exit
      abort("Unexpected value.")
    end
    # ˄
  end

  def to_s : String
    # ˅
    return "[money = #{@money.to_s}]"
    # ˄
  end

  # ˅
  # ˄
end

# ˅
# ˄
