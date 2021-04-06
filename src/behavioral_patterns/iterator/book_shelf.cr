# ˅
require "./aggregate"
require "./book"

# ˄

class BookShelf < Aggregate
  # ˅

  # ˄

  @number_of_books : Int32

  @books : Array(Book)

  getter number_of_books

  def initialize(max_size : Int32)
    # ˅
    @number_of_books = 0
    @books = Array(Book).new(max_size)
    # ˄
  end

  def iterator : Iterator_
    # ˅
    return BookShelfIterator.new(self)
    # ˄
  end

  def get_at(index : Int32) : Book
    # ˅
    return @books[index]
    # ˄
  end

  def add(book : Book)
    # ˅
    @books.push(book)
    @number_of_books += 1
    # ˄
  end

  # ˅
  # ˄
end

# ˅
# ˄
