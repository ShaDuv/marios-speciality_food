Product.destroy_all
Review.destroy_all
# found this solution on stack overflow: https://stackoverflow.com/questions/31478855/seeding-associations-in-rails/31480226#31480226
20.times do
  name = Faker::Dessert.variety
  cost = rand(1.5...27.0).round(2)
  country = Faker::Address.country
  product = Product.create!(name: name, cost: cost, country: country)
  rand(3..8).times do
    author =  Faker::Name.name
    content_body = Faker::Restaurant.review
    rating = rand(1...5)
    review = Review.new(author: author, content_body: content_body, rating: rating)
    review.product = product
    review.save!
  end
end

p "Created #{Product.count} products"
p "Created #{Review.count} reviews"
