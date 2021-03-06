require "rspec"
require "big_octopus"

RSpec.describe "big_octopus.rb" do
  subject(:fish_arr) {
    ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish',
      'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']
  }
  let(:fish_ans) { "fiiiissshhhhhh" }

  describe "#sluggish_octopus" do
    it "finds the longest fish in O(n^2)" do
      expect(sluggish_octopus(fish_arr)).to eq(fish_ans)
    end
  end

  describe "#dominant_octopus" do
    it "finds the longest fish in O(n log n)" do
      expect(dominant_octopus(fish_arr)).to eq(fish_ans)
    end
  end

  describe "#clever_octopus" do
    it "finds the longest fish in O(n)" do
      expect(clever_octopus(fish_arr)).to eq(fish_ans)
    end
  end
end
