# ˅
require "./file_system_element"

# ˄

class Directory < FileSystemElement
  # ˅

  # ˄

  @name : String

  @elements : Array(FileSystemElement)

  def initialize(name : String)
    # ˅
    @name = name
    @elements = Array(FileSystemElement).new
    # ˄
  end

  def name : String
    # ˅
    return @name
    # ˄
  end

  def size : Int32
    # ˅
    size = 0
    @elements.each do |element|
      size += element.size
    end
    return size
    # ˄
  end

  # Print this element with the "upperPath".
  def print(upper_path : String)
    # ˅
    puts "#{upper_path}/#{self.to_s}"
    @elements.each do |element|
      element.print("#{upper_path}/#{@name}")
    end
    # ˄
  end

  # Add an element
  def add(element : FileSystemElement) : FileSystemElement
    # ˅
    @elements.push(element)
    return self
    # ˄
  end

  # ˅
  # ˄
end

# ˅
# ˄
