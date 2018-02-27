require "rspec"
require "dancing_octopus"

RSpec.describe "dancing_octopus.rb" do
  let(:tiles_array) {
    ["up", "right-up", "right", "right-down",
      "down", "left-down", "left",  "left-up" ]
  }

  describe "#slow_dance" do
    it "finds the right tile in O(n)" do
      expect(slow_dance("up", tiles_array)).to be(0)
      expect(slow_dance("right-down", tiles_array)).to be(3)
    end
  end

  let(:new_tiles_data_structure) {
    {"up" => 0, "right-up" => 1, "right" => 2, "right-down" => 3,
      "down" => 4, "left-down" => 5, "left" => 6,  "left-up" => 7}
    }
  describe "#slow_dance" do
    it "finds the right tile in O(1)" do
      expect(fast_dance("up", new_tiles_data_structure)).to be(0)
      expect(fast_dance("right-down", new_tiles_data_structure)).to be(3)
    end
  end
end
