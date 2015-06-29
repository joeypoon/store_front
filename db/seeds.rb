7.times do

  Product.create! name: Faker::Commerce.product_name, price: (100..30000).to_a.sample, permalink: Faker::Internet.url

end
