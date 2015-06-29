7.times do

  Product.create! name: Faker::Commerce.product_name, price: Faker::Commerce.price, permalink: Faker::Internet.url

end
