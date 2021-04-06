# ˅
require "./file_system_element"

# ˄

# Since class name of "File" can not be used duplicately, the class name is "File_".
class File_ < FileSystemElement
  # ˅

  # ˄

  @name : String

  @size : Int32

  def initialize(name : String, size : Int32)
    # ˅
    @name = name
    @size = size
    # ˄
  end

  def accept(visitor : Visitor)
    # ˅
    visitor.visit(self)
    # ˄
  end

  def name : String
    # ˅
    return @name
    # ˄
  end

  def size : Int32
    # ˅
    return @size
    # ˄
  end

  # ˅
  # ˄
end

# ˅
# ˄
