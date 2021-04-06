# ˅

# ˄

class DataLibrary
  # ˅

  # ˄

  INSTANCE = new

  private def initialize
    # ˅
    # ˄
  end

  # Read a data library file.
  def get_properties(data_library_name : String) : Hash(String, String)
    # ˅
    prop = Hash(String, String).new
    File.open("#{File.dirname(__FILE__)}/#{data_library_name}", "r") do |f|
      f.each_line do |line|
        key, value = line.chomp.split("=", 2)
        prop[key] = value
      end
    end
    return prop
    # ˄
  end

  # ˅
  # ˄
end

# ˅
# ˄
