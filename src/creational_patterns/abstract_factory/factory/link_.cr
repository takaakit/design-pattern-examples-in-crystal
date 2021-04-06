# ˅
require "./item"

# ˄

# Since class name of "Link" can not be used duplicately, the class name is "Link_".
abstract class Link_ < Item
  # ˅

  # ˄

  @url : String

  def initialize(name : String, url : String)
    # ˅
    super(name)
    @url = url
    # ˄
  end

  # ˅
  # ˄
end

# ˅
# ˄
