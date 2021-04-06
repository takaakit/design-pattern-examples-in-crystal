# ˅
require "../factory/data"

# ˄

class TableData < Data
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
    buffer.push("<td><table width=\"100%\" border=\"2\">\n")
    buffer.push("<tr><td bgcolor=\"#00CC00\" align=\"center\" colspan=\"#{@items.size.to_s}\"><b>#{@name}</b></td></tr>\n")
    buffer.push("<tr>\n")
    @items.each do |item|
      buffer.push(item.to_html)
    end
    buffer.push("</tr>\n")
    buffer.push("</table></td>\n")
    return buffer.join
    # ˄
  end

  # ˅
  # ˄
end

# ˅
# ˄
