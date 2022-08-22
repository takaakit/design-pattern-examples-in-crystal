# ˅

# ˄

abstract class Display
  # ˅

  # ˄

  def initialize
    # ˅
    # ˄
  end

  # Column width
  abstract def get_columns : Int32

  # Number of rows
  abstract def get_rows : Int32

  abstract def get_line_text(row : Int32) : String

  # Show all
  def show
    # ˅
    get_rows.times do |i|
      puts get_line_text(i)
    end
    # ˄
  end

  # ˅
  # ˄
end

# ˅
# ˄
