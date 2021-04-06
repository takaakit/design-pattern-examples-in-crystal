# ˅
require "./large_size_char"
require "./large_size_char_factory"

# ˄

class LargeSizeString
  # ˅

  # ˄

  @large_size_chars : Array(LargeSizeChar)

  def initialize(string : String)
    # ˅
    @large_size_chars = Array(LargeSizeChar).new

    string.each_char do |ch|
      @large_size_chars.push(LargeSizeCharFactory::INSTANCE.get_large_size_char(ch))
    end
    # ˄
  end

  def display
    # ˅
    @large_size_chars.each do |large_size_char|
      large_size_char.display
    end
    # ˄
  end

  # ˅
  # ˄
end

# ˅
# ˄
