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
    length = message.size
    puts "\"#{message}\""
    print " "
    (0..length - 1).each do |i|
      print @underline_char
    end
    puts ""
    # ˄
  end

  # ˅
  # ˄
end

# ˅
# ˄
