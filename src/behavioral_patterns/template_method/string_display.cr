# ˅
require "./abstract_display"

# ˄

class StringDisplay < AbstractDisplay
  # ˅

  # ˄

  @string_value : String

  # String width
  @width : Int32

  def initialize(string_value : String)
    # ˅
    @string_value = string_value
    @width = string_value.size
    # ˄
  end

  def open
    # ˅
    write_line() # Write a line
    # ˄
  end

  def write
    # ˅
    puts "|" + @string_value + "|" # Display the character with "|"
    # ˄
  end

  def close
    # ˅
    write_line() # Write a line
    # ˄
  end

  private def write_line
    # ˅
    print "#" # Display an end mark "#"
    (0..@width - 1).each do |i|
      print "-" # Display a line "-"
    end
    puts "#" # Display an end mark "#"
    # ˄
  end

  # ˅
  # ˄
end

# ˅
# ˄
