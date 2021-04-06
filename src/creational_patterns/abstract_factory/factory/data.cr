# ˅
require "./item"

# ˄

abstract class Data < Item
  # ˅

  # ˄

  @items : Array(Item)

  def initialize(name : String)
    # ˅
    super(name)
    @items = Array(Item).new
    # ˄
  end

  def add(item : Item)
    # ˅
    @items.push(item)
    # ˄
  end

  # ˅
  # ˄
end

# ˅
# ˄
