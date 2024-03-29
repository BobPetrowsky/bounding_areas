class BoundingBox
  attr_reader :left, :bottom, :width, :height
  def initialize(left, bottom, width, height)
    @left = left
    @bottom = bottom
    @width = width
    @height = height
  end

  def right
    left + width
  end

  def top
    bottom + height
  end

  def contains_point?(x, y)
    if x >= left && x <= left + width && y >= bottom && y <= bottom + height
      return true
    else
      return false
    end
  end

end
