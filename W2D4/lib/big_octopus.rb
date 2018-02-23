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

def clever_octopus(fish_arr)

end
# O(n log n)
