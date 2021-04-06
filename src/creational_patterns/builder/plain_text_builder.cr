# ˅
require "./builder"

# ˄

class PlainTextBuilder < Builder
  # ˅

  # ˄

  @buffer : Array(String)

  def initialize
    # ˅
    @buffer = Array(String).new
    # ˄
  end

  # Make a title of plain text
  def create_title(title : String)
    # ˅
    @buffer.push("--------------------------------\n") # Decoration line
    @buffer.push("[#{title}]\n")                       # Title
    @buffer.push("\n")                                 # Blank line
    # ˄
  end

  # Make a section of plain text
  def create_section(section : String)
    # ˅
    @buffer.push("# #{section}\n") # Section
    @buffer.push("\n")             # Blank line
    # ˄
  end

  # Make items of plain text
  def create_items(items : Array(String))
    # ˅
    items.each do |item|
      @buffer.push("  - #{item}\n") # Items
    end
    @buffer.push("\n") # Blank line
    # ˄
  end

  def close
    # ˅
    @buffer.push("--------------------------------\n") # Decoration line
    # ˄
  end

  def content : String
    # ˅
    return @buffer.join
    # ˄
  end

  # ˅
  # ˄
end

# ˅
# ˄
