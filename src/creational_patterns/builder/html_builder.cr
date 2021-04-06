# ˅
require "./builder"

# ˄

class HTMLBuilder < Builder
  # ˅

  # ˄

  # File name to create
  @_file_name : String?

  def initialize
    # ˅
    @_file_name = nil
    # ˄
  end

  # Make a title of HTML file
  def create_title(title : String)
    # ˅
    @_file_name = "#{title}.html" # Set a title as a file name
    File.write(@_file_name.not_nil!, "", mode: "w")
    File.write(@_file_name.not_nil!, "<html><head><title>#{title}</title></head><body>\n", mode: "a")
    File.write(@_file_name.not_nil!, "<h1>#{title}</h1>\n", mode: "a")
    # ˄
  end

  # Make a section of HTML file
  def create_section(section : String)
    # ˅
    File.write(@_file_name.not_nil!, "<p>#{section}</p>\n", mode: "a") # Write a section
    # ˄
  end

  # Make items of HTML file
  def create_items(items : Array(String))
    # ˅
    File.write(@_file_name.not_nil!, "<ul>\n", mode: "a") # Write items
    items.each do |item|
      File.write(@_file_name.not_nil!, "<li>#{item}</li>\n", mode: "a")
    end
    File.write(@_file_name.not_nil!, "</ul>\n", mode: "a")
    # ˄
  end

  def close
    # ˅
    File.write(@_file_name.not_nil!, "</body></html>", mode: "a")
    # ˄
  end

  def file_name : String?
    # ˅
    return @_file_name
    # ˄
  end

  # ˅
  # ˄
end

# ˅
# ˄
