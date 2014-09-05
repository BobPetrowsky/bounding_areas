class BoundingArea
  def initialize(arr = [])
    @arr = arr
  end

  def contains_point?(x, y)
    if !@arr.empty?
      @arr.each do |box|
        if box.contains_point?(x, y) == true
          return true
        else
          return false
        end
      end
    else
      return false
    end
  end
end
