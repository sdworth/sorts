class InsertionSort
  def initialize(array)
    @array = array
    @outer_bound = 1
    sort
  end

  def sort
    while @outer_bound < @array.length

      inner_bound = @outer_bound

      while inner_bound > 0

        if @array[inner_bound - 1] > @array[inner_bound]

          @array[inner_bound - 1], @array[inner_bound] = @array[inner_bound], @array[inner_bound - 1]

          inner_bound -= 1
        else
          break
        end
      end

      @outer_bound += 1
    end
  end

  def view
    @array
  end
end

array = [2, 5, 6, 7, 3, 4, 9, 1, 3, 2, 9, 10, 1]

puts InsertionSort.new(array).view