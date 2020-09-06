  require 'pry'
  # src will be an Array of Arrays of Strings and Integers
  # Combine all Strings present in the AoA into a single value and return it
  
def join_nested_strings(array_of_arrays)
  collected_strings = []
  row_index = 0
  while row_index < array_of_arrays.count do
    element_index = 0
    while element_index < array_of_arrays[row_index].count do
      if Integer(array_of_arrays[row_index][element_index], exception: false) == nil
        collected_strings.push(array_of_arrays[row_index][element_index])
      end 
    element_index += 1
    end
  row_index += 1
  end
collected_strings.join(" ")
end
    