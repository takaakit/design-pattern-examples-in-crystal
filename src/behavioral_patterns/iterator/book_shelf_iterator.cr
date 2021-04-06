# ˅
require "./book_shelf"
require "./iterator_"

# ˄

class BookShelfIterator < Iterator_
  # ˅

  # ˄

  @index : Int32

  @book_shelf : BookShelf

  def initialize(book_shelf : BookShelf)
    # ˅
    @index = 0
    @book_shelf = book_shelf
    # ˄
  end

  def has_next : Bool
    # ˅
    return @index < @book_shelf.number_of_books
    # ˄
  end

  def next : Object
    # ˅
    book = @book_shelf.get_at(@index)
    @index += 1
    return book
    # ˄
  end

  # ˅
  # ˄
end

# ˅
# ˄
