require 'rails_helper'

RSpec.describe Product, type: :model do
  describe "Validations" do
    it "should save successfully when all fields are present" do
      @category = Category.new(name: "Blazeit Plant")
      @product = Product.new(name: "Sour Cherry", price: 100, quantity: 1, category: @category)
      expect(@product).to be_valid
    end

    it "should not save when name is missing" do
      @category = Category.new(name: "Blazeit Plant")
      @product = Product.new(name: nil, price: 100, quantity: 1, category: @category)
      expect(@product).to_not be_valid
    end

    it "should not save when price is missing" do
      @category = Category.new(name: "Blazeit Plant")
      @product = Product.new(name: "Sour Cherry", price: nil, quantity: 1, category: @category)
      expect(@product).to_not be_valid
    end

    it "should not save when quantity is missing" do
      @category = Category.new(name: "Blazeit Plant")
      @product = Product.new(name: "Sour Cherry", price: 100, quantity: nil, category: @category)
      expect(@product).to_not be_valid
    end

    it "should not save when category is missing" do
      @category = Category.new(name: "Blazeit Plant")
      @product = Product.new(name: "Sour Cherry", price: 100, quantity: 1, category: nil)
      expect(@product).to_not be_valid
    end
  end
end
