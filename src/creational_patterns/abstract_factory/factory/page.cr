# ˅
require "file_utils"
require "./item"

# ˄

abstract class Page
  # ˅

  # ˄

  @title : String

  @author : String

  @contents : Array(Item)

  def initialize(title : String, author : String)
    # ˅
    @title = title
    @author = author
    @contents = Array(Item).new
    # ˄
  end

  abstract def to_html : String

  def add(item : Item)
    # ˅
    @contents.push(item)
    # ˄
  end

  def output
    # ˅
    file_name = "#{@title}.html"
    File.write(file_name, to_html, mode: "w")
    puts "#{file_name} has been created."
    puts "Output File: #{FileUtils.pwd}/#{file_name}"
    # ˄
  end

  # ˅
  # ˄
end

# ˅
# ˄
