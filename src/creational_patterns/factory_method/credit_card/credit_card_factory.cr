# ˅
require "../framework/factory"
require "./credit_card"

# ˄

class CreditCardFactory < Factory
  # ˅

  # ˄

  def initialize
    # ˅
    # ˄
  end

  def create_product(owner : String) : Product
    # ˅
    return CreditCard.new(owner)
    # ˄
  end

  # ˅
  # ˄
end

# ˅
# ˄
