# ˅
require "../factory/factory"
require "./table_data"
require "./table_link"
require "./table_page"

# ˄

class TableFactory < Factory
  # ˅

  # ˄

  def create_page(title : String, author : String) : Page
    # ˅
    return TablePage.new(title, author)
    # ˄
  end

  def create_link(name : String, url : String) : Link_
    # ˅
    return TableLink.new(name, url)
    # ˄
  end

  def create_data(name : String) : Data
    # ˅
    return TableData.new(name)
    # ˄
  end

  # ˅
  # ˄
end

# ˅
# ˄
