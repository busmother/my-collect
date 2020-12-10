require 'pry'
   
def my_collect(array)
    collection = []
    if array.count == 0
        return "No block received."
    else
        i = 0
        while i < array.length
          input = yield(array[i])
          collection << input
          i = i + 1
        end
    end
    collection
end