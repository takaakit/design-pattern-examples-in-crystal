# ˅
require "./file_system_element"

# ˄

class Directory < FileSystemElement
  # ˅

  # ˄

  @name : String

  # Collection of elements
  @elements : Array(FileSystemElement)

  getter elements

  def initialize(name : String)
    # ˅
    @name = name
    @elements = Array(FileSystemElement).new
    # ˄
  end

  # Accept a visitor
  def accept(visitor : Visitor)
    # ˅
    visitor.visit(self)
    # ˄
  end

  # Directory name
  def name : String
    # ˅
    return @name
    # ˄
  end

  # Directory size
  def size : Int32
    # ˅
    size = 0
    @elements.each do |element|
      size += element.size
    end
    return size
    # ˄
  end

  # Add an element
  def add(element : FileSystemElement)
    # ˅
    @elements.push(element)
    # ˄
  end

  # ˅
  # ˄
end

# ˅
# ˄
