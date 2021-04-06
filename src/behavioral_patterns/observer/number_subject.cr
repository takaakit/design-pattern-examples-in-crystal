# ˅
require "./subject"

# ˄

# Generate a random number.
class NumberSubject < Subject
  # ˅

  # ˄

  @value : Int32

  def initialize
    # ˅
    super
    @value = 0
    # ˄
  end

  def value : Int32
    # ˅
    return @value
    # ˄
  end

  def value=(value : Int32)
    # ˅
    @value = value
    notify_observers()
    # ˄
  end

  # ˅
  # ˄
end

# ˅
# ˄
