# ˅
require "./product"

# ˄

abstract class Factory
  # ˅

  # ˄

  def create(owner : String) : Product
    # ˅
    # Write pre-creation code here.

    # Encapsulate the knowledge of which Product subclass to create and move this knowledge out of the framework.
    product = create_product(owner)

    # Write post-creation code here.

    return product
    # ˄
  end

  protected abstract def create_product(owner : String) : Product

  # ˅
  # ˄
end

# ˅
# ˄
