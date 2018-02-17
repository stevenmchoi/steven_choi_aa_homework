class Map
  # assign(key, value), lookup(key), remove(key), show
  def initialize
    @map_struct = []
  end

  def assign(key, value)
    if keys.include?(key)
      idx = keys.index(key)
      @map_struct[idx][1] = value
      @map_struct[idx]
    else
      @map_struct << [key, value]
      [key, value]
    end
  end

  def lookup(key)
    if keys.include?(key)
      idx = keys.index(key)
      @map_struct[idx][1]
    end
  end

  def remove(key)
    if keys.include?(key)
      idx = keys.index(key)
      @map_struct.delete_at(idx)
    end
  end

  def show
    p @map_struct
  end

  private

  def keys
    @map_struct.reduce([]) do |acc, pair|
      acc << pair[0]
    end
  end
end
