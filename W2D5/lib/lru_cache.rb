class LRUCache
  def initialize(num)
    @max = num
    @cache = Array.new(4)
  end

  def count
    # returns number of elements currently in cache
    @cache.count
  end

  def add(el)
    # adds element to cache according to LRU principle
    @cache[0] = el
  end

  def show
    # shows the items in the cache, with the LRU item first
  end

  private
  # helper methods go here!

end
