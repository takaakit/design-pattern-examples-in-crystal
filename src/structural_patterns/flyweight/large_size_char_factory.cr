# ˅
require "./large_size_char"

# ˄

class LargeSizeCharFactory
  # ˅

  # ˄

  INSTANCE = new

  @pool_chars : Hash(Char, LargeSizeChar)

  private def initialize
    # ˅
    @pool_chars = Hash(Char, LargeSizeChar).new
    # ˄
  end

  # Create an instance of the large size character.
  def get_large_size_char(char_name : Char) : LargeSizeChar
    # ˅
    lsc = @pool_chars[char_name]?
    if lsc.nil?
      lsc = LargeSizeChar.new(char_name) # Create an instance
      @pool_chars[char_name] = lsc
    end
    return lsc
    # ˄
  end

  # ˅
  # ˄
end

# ˅
# ˄
