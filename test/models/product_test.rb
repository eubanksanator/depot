require 'test_helper'

class ProductTest < ActiveSupport::TestCase
   fixtures :products  # This is test data we create

   test "product attributes must not be empty" do
      product = Product.new
      assert product.invalid?
      assert product.errors[:title].any?
      assert product.errors[:description].any?
      assert product.errors[:image_url].any?
      assert product.errors[:price].any?
   end

   test "product price must be positive" do
      product = Product.new(  title: "The arm blaster",
                              description: "really good arm workout",
                              image_url: "aaa.png")
      product.price = -1
      assert product.invalid?, "must be greater than or equal to 0.01"

      product.price = 0
      assert product.invalid?, "must be greater than or equal to 0.01"

      product.price = 8
      assert product.invalid?, "#{product.price} must be greater than or equal to 0.01"

   end

   def new_product(image_url)
      Product.new(title: "Arm blaster", description: "Good arms workoutout", price: 1, image_url: image_url)
   end

   test "image url" do
      ok_images  = %w{ fred.gif fred.jpg fred.png FRED.JPG FRED.Jpg http://a.b.c/a/b/c/fred.gif }
      bad_images = %w{ fred.doc fred.gif/more fred.gif.more }

      ok_images.each do |image|
         assert new_product(image).valid?, "#{image} should be valid"
      end

      bad_images.each do |image|
         assert new_product(image).invalid?, "#{image} should NOT be valid"
      end
   end

# Below uses the fixtures
   test "product is not valid without a unique title" do
      product = Product.new(title: products(:ruby).title, description: "yyy", price: 10, image_url: "travis.gif")
      assert product.invalid?, "Must be unique title"
   end

   test "the title is not longer than 10chars" do
      product = Product.new(title: "Travis Eubanks is Awesome yeah man", description: "yyy", price: 10, image_url: "travis.gif")
      assert product.invalid?, "must be less than or equal to 10chars long"
   end

end







