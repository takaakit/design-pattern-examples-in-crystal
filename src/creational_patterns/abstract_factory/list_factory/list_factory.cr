# ˅
require "../factory/factory"
require "./list_data"
require "./list_link"
require "./list_page"

# ˄

class ListFactory < Factory
  # ˅

  # ˄

  def create_page(title : String, author : String) : Page
    # ˅
    return ListPage.new(title, author)
    # ˄
  end

  def create_link(name : String, url : String) : Link_
    # ˅
    return ListLink.new(name, url)
    # ˄
  end

  def create_data(name : String) : Data
    # ˅
    return ListData.new(name)
    # ˄
  end

  # ˅
  # ˄
end

# ˅
# ˄
