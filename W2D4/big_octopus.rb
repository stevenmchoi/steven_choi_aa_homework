def sluggish_octopus(fish_arr)
  fish_arr.each do |fish|
    return fish if fish_arr.all? { |other_fish| fish.length > other_fish.length }
  end
end
