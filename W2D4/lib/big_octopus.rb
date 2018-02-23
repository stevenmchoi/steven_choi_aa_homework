require "byebug"

# fish_arr =  [
#   'fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish',
#   'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh'
# ]

def sluggish_octopus(fish_arr)
  fish_arr.each do |fish|
    return fish if fish_arr.all? { |other_fish| fish.length >= other_fish.length }
  end
end
# O(n^2)

def dominant_octopus(fish_arr)
  return fish_arr if fish_arr.length <= 1

  mid = fish_arr.length / 2
  left, right = fish_arr.take(mid), fish_arr.drop(mid)

  dom_octo_merge(dominant_octopus(left), dominant_octopus(right)).last
end

def dom_octo_merge(left, right)
  return right if left.empty?
  return left if right.empty?

  if left.is_a?(String)
    left = [left]
    right = [right]
  end

  if left.first.length < right.first.length
    shorter = left.shift
  else
    shorter = right.shift
  end

  [shorter] + dom_octo_merge(left, right)
end
# O(n log n)

def clever_octopus(fish_arr)

end
# O(n)
