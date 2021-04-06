# ˅

# ˄

abstract class FileSystemElement
  # ˅

  # ˄

  abstract def name : String

  abstract def size : Int32

  # Print this element with the "upperPath".
  abstract def print(upper_path : String)

  def to_s : String
    # ˅
    return "#{name} (#{size})"
    # ˄
  end

  # ˅
  # ˄
end

# ˅
# ˄
