# ˅
require "../factory/link_"

# ˄

class TableLink < Link_
  # ˅

  # ˄

  def initialize(name : String, url : String)
    # ˅
    super(name, url)
    # ˄
  end

  def to_html : String
    # ˅
    return "  <td><a href=\"#{@url}\">#{@name}</a></td>\n"
    # ˄
  end

  # ˅
  # ˄
end

# ˅
# ˄
