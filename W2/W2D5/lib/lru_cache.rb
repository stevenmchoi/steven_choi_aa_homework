class LRUCache
  def initialize(num)
    @max = num
    @cache = []
  end

  def count
    # returns number of elements currently in cache
    @cache.count
  end

  def add(el)
    # adds element to cache according to LRU principle
    if @cache.include?(el)
      @cache.delete(el)
      @cache << el
    else
      @cache << el
      @cache.shift if count > @max
    end

    el
  end

  def show
    # shows the items in the cache, with the LRU item first
    print @cache, "\n"
    @cache
  end

  private
  # helper methods go here!

end
