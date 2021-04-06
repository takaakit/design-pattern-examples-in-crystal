# ˅

# ˄

class LargeSizeChar
  # ˅

  # ˄

  # Display data of the large size character
  @display_data : String

  def initialize(char_name : Char)
    # ˅
    @display_data = ""

    begin
      @display_data = File.read("#{File.dirname(__FILE__)}/big#{char_name}.txt")
    rescue
      @display_data = "#{char_name}?"
    end
    # ˄
  end

  # Display the large size character
  def display
    # ˅
    puts @display_data
    # ˄
  end

  # ˅
  # ˄
end

# ˅
# ˄
