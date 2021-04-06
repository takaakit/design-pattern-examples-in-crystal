# ˅
require "./data"
require "./link_"
require "./page"

# ˄

abstract class Factory
  # ˅

  # ˄

  abstract def create_page(title : String, author : String) : Page

  abstract def create_link(name : String, url : String) : Link_

  abstract def create_data(name : String) : Data

  # ˅
  # ˄
end

# ˅
# ˄
