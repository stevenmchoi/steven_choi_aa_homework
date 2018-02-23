 def slow_dance(tile, tiles_array)
   tiles_array.each_with_index do |other_tile, idx|
     return idx if tile == other_tile
   end
 end

 def fast_dance(tile, new_tiles_data_structure)
   new_tiles_data_structure[tile]
 end
