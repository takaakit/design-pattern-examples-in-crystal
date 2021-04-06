# ˅
require "./product"

# ˄

abstract class Factory
  # ˅

  # ˄

  def create(owner : String) : Product
    # ˅
    return create_product(owner)
    # ˄
  end

  protected abstract def create_product(owner : String) : Product

  # ˅
  # ˄
end

# ˅
# ˄
