require 'rails_helper'


  describe Product do
  it { should have_many(:reviews) }

  it("titleizes the name of an product") do
    product = Product.create({name: "souper cake", cost: 2.22, country: "Mexico"})
    expect(product.name()).to(eq("Souper Cake"))
  end
end
