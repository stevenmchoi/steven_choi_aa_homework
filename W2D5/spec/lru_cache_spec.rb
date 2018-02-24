require "rspec"
require "lru_cache"

RSpec.describe LRUCache do
  # johnny_cache = LRUCache.new(4)
  subject(:johnny_cache) { LRUCache.new(4) }

  # johnny_cache.add("I walk the line")
  describe "#add" do
    it "successfully adds a string to the cache" do
      expect(johnny_cache.add("I walk the line")).to eq("I walk the line")
    end
  end

  # johnny_cache.add(5)
  #
  # johnny_cache.count # => returns 2
  #
  # johnny_cache.add([1,2,3])
  # johnny_cache.add(5)
  # johnny_cache.add(-5)
  # johnny_cache.add({a: 1, b: 2, c: 3})
  # johnny_cache.add([1,2,3,4])
  # johnny_cache.add("I walk the line")
  # johnny_cache.add(:ring_of_fire)
  # johnny_cache.add("I walk the line")
  # johnny_cache.add({a: 1, b: 2, c: 3})
  #
  #
  # johnny_cache.show
  # => prints [[1, 2, 3, 4], :ring_of_fire,
  #            "I walk the line", {:a=>1, :b=>2, :c=>3}]
end
