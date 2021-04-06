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

  # Print this element with the "upperPath".
  def print(upper_path : String)
    # ˅
    puts "#{upper_path}/#{self.to_s}"
    # ˄
  end

  # ˅
  # ˄
end

# ˅
# ˄
