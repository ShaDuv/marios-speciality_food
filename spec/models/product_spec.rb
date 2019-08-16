require 'rails_helper'


  describe Product do
  it { should have_many(:reviews) }
  it { should validate_presence_of :name }
  it { should validate_presence_of :cost }
  it { should validate_presence_of :country }
  
  it("titleizes the name of an product") do
    product = Product.create({name: "souper cake", cost: 2.22, country: "Mexico"})
    expect(product.name()).to(eq("Souper Cake"))
  end
end
