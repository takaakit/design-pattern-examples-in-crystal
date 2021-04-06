# ˅
require "../factory/link_"

# ˄

class ListLink < Link_
  # ˅

  # ˄

  def initialize(name : String, url : String)
    # ˅
    super(name, url)
    # ˄
  end

  def to_html : String
    # ˅
    return "  <li><a href=\"#{@url}\">#{@name}</a></li>\n"
    # ˄
  end

  # ˅
  # ˄
end

# ˅
# ˄
