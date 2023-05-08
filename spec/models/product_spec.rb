require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    before(:each) do
      @category = Category.new(name: 'Climbers')
      @product = Product.new(name: 'Money Tree', price_cents: 10.99, quantity: 10, category: @category)
    end

    describe 'when a new product is created with all four fields set' do
      it 'should save successfully' do
        expect(@product).to be_valid
        expect{@product.save}.to change {Product.count}.by(1)
      end
    end

    describe 'when name is not present' do
      it 'should not be valid' do
        @product.name = nil
        expect(@product).not_to be_valid
        expect(@product.errors.full_messages).to include('Name can\'t be blank')
      end
    end

    describe 'when price is blank' do
      it 'should not be valid' do
        @product.price_cents = nil
        expect(@product).not_to be_valid
        expect(@product.errors.full_messages).to include('Price can\'t be blank')
      end
    end


    describe 'when quantity is blank' do
      it 'should not be valid' do
        @product.quantity = nil
        expect(@product).not_to be_valid
        expect(@product.errors.full_messages).to include('Quantity can\'t be blank')
      end
    end

    describe 'when category is blank' do
      it 'should not be valid' do
        @product.category = nil
        expect(@product).not_to be_valid
        expect(@product.errors.full_messages).to include('Category can\'t be blank')
      end
    end



    #Rspec and before each
  end
end
