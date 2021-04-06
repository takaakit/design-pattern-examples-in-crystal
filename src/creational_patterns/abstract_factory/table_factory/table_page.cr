# ˅
require "../factory/page"

# ˄

class TablePage < Page
  # ˅

  # ˄

  def initialize(title : String, author : String)
    # ˅
    super(title, author)
    # ˄
  end

  def to_html : String
    # ˅
    buffer = Array(String).new
    buffer.push("<html><head><title>#{@title}</title></head><body>\n")
    buffer.push("<h1>#{@title}</h1>\n")
    buffer.push("<table width=\"80%\" border=\"3\">\n")
    @contents.each do |content|
      buffer.push("<tr>#{content.to_html}</tr>\n")
    end
    buffer.push("</table>\n")
    buffer.push("<hr><address>#{@author}</address>\n")
    buffer.push("</body></html>\n")
    return buffer.join
    # ˄
  end

  # ˅
  # ˄
end

# ˅
# ˄
