# ˅
require "./framework/display"

# ˄

class FrameDisplay < Display
  # ˅

  # ˄

  @border_char : Char

  def initialize(border_char : Char)
    # ˅
    @border_char = border_char
    # ˄
  end

  def clone : Display
    # ˅
    return FrameDisplay.new(@border_char)
    # ˄
  end

  def show(message : String)
    # ˅
    puts @border_char.to_s * (message.size + 4)
    puts "#{@border_char} #{message} #{@border_char}"
    puts @border_char.to_s * (message.size + 4)
    # ˄
  end

  # ˅
  # ˄
end

# ˅
# ˄
