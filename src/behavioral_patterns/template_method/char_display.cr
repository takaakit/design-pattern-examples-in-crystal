# ˅
require "./abstract_display"

# ˄

class CharDisplay < AbstractDisplay
  # ˅

  # ˄

  @char_value : Char

  def initialize(char_value : Char)
    # ˅
    @char_value = char_value
    # ˄
  end

  def open
    # ˅
    print "<<" # Display "<<" in the start characters.
    # ˄
  end

  def write
    # ˅
    print @char_value # Display the character.
    # ˄
  end

  def close
    # ˅
    puts ">>" # Display ">>" in the end characters.
    # ˄
  end

  # ˅
  # ˄
end

# ˅
# ˄
