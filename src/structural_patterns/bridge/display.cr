# ˅
require "./display_impl"

# ˄

class Display
  # ˅

  # ˄

  @impl : DisplayImpl

  def initialize(impl : DisplayImpl)
    # ˅
    @impl = impl
    # ˄
  end

  def output
    # ˅
    open
    write
    close
    # ˄
  end

  protected def open
    # ˅
    @impl.impl_open
    # ˄
  end

  protected def write
    # ˅
    @impl.impl_write
    # ˄
  end

  protected def close
    # ˅
    @impl.impl_close
    # ˄
  end

  # ˅
  # ˄
end

# ˅
# ˄
