# ˅
require "./display"

# ˄

abstract class Frame < Display
  # ˅

  # ˄

  @display : Display

  def initialize(display : Display)
    # ˅
    super()
    @display = display
    # ˄
  end

  # ˅
  # ˄
end

# ˅
# ˄
