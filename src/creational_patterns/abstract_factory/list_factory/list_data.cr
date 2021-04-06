# ˅
require "../factory/data"

# ˄

class ListData < Data
  # ˅

  # ˄

  def initialize(name : String)
    # ˅
    super(name)
    # ˄
  end

  def to_html : String
    # ˅
    buffer = Array(String).new
    buffer.push("<li>#{@name}<ul>\n")
    @items.each do |item|
      buffer.push(item.to_html)
    end
    buffer.push("</ul></li>\n")
    return buffer.join
    # ˄
  end

  # ˅
  # ˄
end

# ˅
# ˄
