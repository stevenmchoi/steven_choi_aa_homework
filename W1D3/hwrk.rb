def sum_to(num)
  return nil if num < 1
  if num == 1
    1
  else
    num + sum_to(num - 1)
  end
end

# p sum_to(5)  # => returns 15
# p sum_to(1)  # => returns 1
# p sum_to(9)  # => returns 45
# p sum_to(-8) # => returns nil

def add_numbers(num_arr)
  return nil if num_arr.empty?
  if num_arr.length == 1
    num_arr[0]
  else
    num_arr[0] + add_numbers(num_arr[1..-1])
  end
end

# p add_numbers([1,2,3,4]) # => returns 10
# p add_numbers([3]) # => returns 3
# p add_numbers([-80,34,7]) # => returns -39
# p add_numbers([]) # => returns nil

def gamma_fnc(num)
  return nil if num == 0
  if num == 1
    1
  else
    new_num = num - 1
    new_num * gamma_fnc(new_num)
  end
end

# p gamma_fnc(0)  # => returns nil
# p gamma_fnc(1)  # => returns 1
# p gamma_fnc(4)  # => returns 6
# p gamma_fnc(8)  # => returns 5040

def ice_cream_shop(flavors, favorite)
  if flavors.empty?
    false
  elsif flavors[0] == favorite
    true
  else
    ice_cream_shop(flavors[1..-1], favorite)
  end
end

# p ice_cream_shop(['vanilla', 'strawberry'], 'blue moon')  # => returns false
# p ice_cream_shop(['pistachio', 'green tea', 'chocolate', 'mint chip'], 'green tea')  # => returns true
# p ice_cream_shop(['cookies n cream', 'blue moon', 'superman', 'honey lavender', 'sea salt caramel'], 'pistachio')  # => returns false
# p ice_cream_shop(['moose tracks'], 'moose tracks')  # => returns true
# p ice_cream_shop([], 'honey lavender')  # => returns false

def reverse(string)
  if string.empty?
    ""
  else
    reverse(string[1..-1]) + string[0]
  end
end

# p reverse("house") # => "esuoh"
# p reverse("dog") # => "god"
# p reverse("atom") # => "mota"
# p reverse("q") # => "q"
# p reverse("id") # => "di"
# p reverse("") # => ""
