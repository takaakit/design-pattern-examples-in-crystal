# ˅
require "./product"

# ˄

abstract class Factory
  # ˅

  # ˄

  def create(owner : String) : Product
    # ˅
    # Write pre-creation code here, if any.

    product = create_product(owner)

    # Write post-creation code here, if any.

    return product
    # ˄
  end

  protected abstract def create_product(owner : String) : Product

  # ˅
  # ˄
end

# ˅
# ˄
