# ˅
require "./mediator"

# ˄

abstract class Colleague
  # ˅

  # ˄

  @mediator : Mediator?

  property mediator

  def initialize
    # ˅
    @mediator = nil
    # ˄
  end

  # Set enable/disable from the Mediator
  abstract def set_activation(is_enable : Bool)

  # ˅
  # ˄
end

# ˅
# ˄
