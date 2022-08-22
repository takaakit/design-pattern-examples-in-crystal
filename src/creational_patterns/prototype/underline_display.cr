# ˅
require "./framework/display"

# ˄

class UnderlineDisplay < Display
  # ˅

  # ˄

  @underline_char : Char

  def initialize(underline_char : Char)
    # ˅
    @underline_char = underline_char
    # ˄
  end

  def clone : Display
    # ˅
    return UnderlineDisplay.new(@underline_char)
    # ˄
  end

  def show(message : String)
    # ˅
    puts "\"#{message}\""
    puts " #{@underline_char.to_s * message.size}"
    # ˄
  end

  # ˅
  # ˄
end

# ˅
# ˄
