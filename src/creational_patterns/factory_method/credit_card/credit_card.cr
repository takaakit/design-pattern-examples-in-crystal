# ˅
require "../framework/product"

# ˄

class CreditCard < Product
  # ˅

  # ˄

  @owner : String

  def initialize(owner : String)
    # ˅
    @owner = owner
    puts "Make #{@owner}'s card."
    # ˄
  end

  def use
    # ˅
    puts "Use #{@owner}'s card."
    # ˄
  end

  # ˅
  # ˄
end

# ˅
# ˄
