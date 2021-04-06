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
    length = message.size
    (0..length + 4 - 1).each do |i|
      print @border_char
    end
    puts ""
    puts "#{@border_char} #{message} #{@border_char}"
    (0..length + 4 - 1).each do |i|
      print @border_char
    end
    puts ""
    # ˄
  end

  # ˅
  # ˄
end

# ˅
# ˄
