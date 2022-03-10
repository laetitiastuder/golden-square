
def get_most_common_letter(text)
  counter = Hash.new(0)
  text.delete(" ").chars.each do |char|
    counter[char] += 1 
  end
    sorted_arr = counter.to_a.hash_to_arr.sort_by { |k, v| v }.reverse
    p sorted_arr[0][0]
end

get_most_common_letter("the roof, the roof, the roof is on fire!")


# Intended output:
# 
# > get_most_common_letter("the roof, the roof, the roof is on fire!")
# => "o"