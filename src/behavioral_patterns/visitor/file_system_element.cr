# ˅
require "./element"

# ˄

abstract class FileSystemElement < Element
  # ˅

  # ˄

  abstract def name : String

  abstract def size : Int32

  def to_s : String
    # ˅
    return name + " (" + size.to_s + ")"
    # ˄
  end

  # ˅
  # ˄
end

# ˅
# ˄
