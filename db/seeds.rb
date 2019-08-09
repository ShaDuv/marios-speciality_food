Product.destroy_all
Review.destroy_all
# found this solution on stack overflow: https://stackoverflow.com/questions/31478855/seeding-associations-in-rails/31480226#31480226
20.times do
  name = Faker::Dessert.variety
  cost = 
  division = Division.create!(name: name)
  5.times do
    first_name =  Faker::Name.first_name
    last_name =  Faker::Name.last_name
    employee = Employee.new(first_name: first_name, last_name: last_name)
    employee.division = division
    employee.save!
  end
end

p "Created #{Division.count} divisions"
p "Created #{Employee.count} employees"
