def join_nested_strings(src)
  # src will be an Array of Arrays of Strings and Integers
  # Combine all Strings present in the AoA into a single value and return it
  string_var = []
  row_index = 0 
  while row_index < src.count do
    element_index = 0
    while element_index < src[row_index].count do
      #  src[row_index].each do |elem| elem.is_a? String string_var << elem
      string_var << src[row_index].reject {|elem| elem.is_a? Integer}
            element_index += 1
    end
    row_index +=1
    
end
p string_var.uniq.join(" ")
end

# mixed_data = [
#   ["The", 4, "quick"],
#   [-1, "brown", "fox", 30],
#   ["studied", 101, 233, "Ruby"]
# ]

# join_nested_strings(mixed_data)