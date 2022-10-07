require "byebug"

# def my_min(array)
#     min = array.shift
#     array.each_with_index do |ele1, idx1|
#         array.each_with_index do |ele2, idx2|
#             # debugger
#             if ele1 < min
#                 min = ele1 
#             end
#         end
#     end
#     min
# end

def my_min(array)
    min = array.first
    array.each do |ele|
        min = ele if ele < min
    end
    min

end

# list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# p my_min(list)  # =>  -5

# def largest_contiguous_subsum(array)
#     sum = 0
#     (0...array.length).each do |i|
#         (i...array.length).each do |k|
#             current = array[i..k]
#             sum = current.sum if current.sum > sum
#         end
#     end
#     sum
# end
# list = [5, 3, -7]
# p largest_contiguous_subsum(list) 

def largest_contiguous_subsum(array)
    largest = 0
    (0...array.length).each do |i|
       current_1 = array[i..-1]
       current_2 = array[0..i]
       
       largest = current_2.sum if current_2.sum > largest
       largest = current_1.sum if current_1.sum > largest
    end
    largest
end
list = [5, 3, -7]
p largest_contiguous_subsum(list) 
