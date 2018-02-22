require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements
without blocks)! Be sure to look over the solutions when you're done.
=end
RSpec.describe Dessert do
  let(:chef) { double("chef") }
  let(:quantity) { 10 }
  let(:quantity2) { "10" }
  subject(:dessert) { Dessert.new("soup", quantity, chef) }

  describe "#initialize" do
    it "sets a type" do
      expect(dessert.type).to include("soup")
    end

    it "sets a quantity" do
      expect(dessert.quantity).to be(10)
    end

    it "starts ingredients as an empty array" do
      expect(dessert.ingredients).to be_empty
    end

    it "raises an argument error when given a non-integer quantity" do
      expect { Dessert.new("soup", quantity2, chef) }.to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    let(:ingredient) { "spam" }

    it "adds an ingredient to the ingredients array" do
      dessert.add_ingredient(ingredient)
      expect(dessert.ingredients).to include(ingredient)
    end
  end

  describe "#mix!" do
    let(:ingredients_list) { ["spam", "chicken", "pork", "kitchen sink"] }

    it "shuffles the ingredient array" do
      ingredients_list.each do |ingredient|
        dessert.add_ingredient(ingredient)
      end
      dessert.mix!

      expect(dessert.ingredients).to_not eq(ingredients_list)
      expect(dessert.ingredients).to match_array(ingredients_list)
    end
  end

  describe "#eat" do
    let(:amount1) { 3 }
    it "subtracts an amount from the quantity" do
      dessert.eat(amount1)
      expect(dessert.quantity).to eq(quantity - amount1)
    end

    let(:amount2) { quantity + 1 }
    it "raises an error if the amount is greater than the quantity" do
      expect { dessert.eat(amount2) }.to raise_error
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name"
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in"
  end
end
