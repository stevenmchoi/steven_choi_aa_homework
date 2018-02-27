require "rspec"
require "lru_cache"

RSpec.describe LRUCache do
  # johnny_cache = LRUCache.new(4)
  subject(:johnny_cache) { LRUCache.new(4) }

  describe "#add" do
    it "adds a string to the cache" do
      expect(johnny_cache.add("I walk the line")).to eq("I walk the line")
    end

    it "adds a number to the cache" do
      expect(johnny_cache.add(5)).to eq(5)
    end

    it "adds a number to the cache" do
      expect(johnny_cache.add([1,2,3])).to eq([1,2,3])
    end

    it "adds a number to the cache" do
      expect(johnny_cache.add({a: 1, b: 2, c: 3})).to eq(
        {a: 1, b: 2, c: 3})
    end

    it "adds multiple elements to the cache" do
      johnny_cache.add("I walk the line")
      johnny_cache.add(5)
      johnny_cache.add([1,2,3])
      expect(johnny_cache.show).to eq(
        ["I walk the line", 5, [1, 2, 3]]
      )
    end

    it "adds multiple elements according to LRU to the cache" do
      johnny_cache.add("I walk the line")
      johnny_cache.add(5)
      johnny_cache.add([1,2,3])
      johnny_cache.add("I walk the line")
      expect(johnny_cache.show).to eq(
        [5, [1, 2, 3], "I walk the line"]
      )
    end
  end

  describe "#count" do
    it "counts the number of items after adding" do
      johnny_cache.add("I walk the line")
      johnny_cache.add(5)
      expect(johnny_cache.count).to eq(2)
    end
  end

  describe "#show" do
    it "shows the cache after no elements added" do
      expect(johnny_cache.show).to eq([])
    end

    it "shows the cache after one element added" do
      johnny_cache.add(5)
      expect(johnny_cache.show).to eq([5])
    end

    it "shows the cache after many elements added" do
      johnny_cache.add("I walk the line")
      johnny_cache.add(5)
      johnny_cache.add([1,2,3])
      johnny_cache.add(5)
      johnny_cache.add(-5)
      johnny_cache.add({a: 1, b: 2, c: 3})
      johnny_cache.add([1,2,3,4])
      johnny_cache.add("I walk the line")
      johnny_cache.add(:ring_of_fire)
      johnny_cache.add("I walk the line")
      johnny_cache.add({a: 1, b: 2, c: 3})

      expect(johnny_cache.show).to eq([
        [1, 2, 3, 4], :ring_of_fire,
         "I walk the line", { :a => 1, :b => 2, :c => 3 } ] )
    end
  end
end
