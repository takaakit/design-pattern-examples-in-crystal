# ˅
require "../factory/page"

# ˄

class ListPage < Page
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
    buffer.push("<html><head><title>#{@title}</title></head>\n")
    buffer.push("<body><h1>#{@title}</h1>\n")
    buffer.push("<ul>\n")
    @contents.each do |content|
      buffer.push(content.to_html)
    end
    buffer.push("</ul>\n")
    buffer.push("<hr><address>#{@author}</address>")
    buffer.push("</body></html>\n")
    return buffer.join
    # ˄
  end

  # ˅
  # ˄
end

# ˅
# ˄
