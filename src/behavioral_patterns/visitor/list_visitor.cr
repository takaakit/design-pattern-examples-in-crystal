# ˅
require "./visitor"

# ˄

class ListVisitor < Visitor
  # ˅

  # ˄

  # Currently visited directory
  @current_directory : String

  def initialize
    # ˅
    @current_directory = ""
    # ˄
  end

  # Visit a file
  def visit(file : File_)
    # ˅
    puts "#{@current_directory}/#{file.to_s}"
    # ˄
  end

  # Visit a directory
  def visit(directory : Directory)
    # ˅
    puts "#{@current_directory}/#{directory.to_s}"
    visited_directory = @current_directory
    @current_directory = "#{@current_directory}/#{directory.name}"
    directory.elements.each do |value|
      value.accept(self)
    end
    @current_directory = visited_directory
    # ˄
  end

  # ˅
  # ˄
end

# ˅
# ˄
