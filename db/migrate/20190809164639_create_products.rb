class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.string :string
      t.string :cost
      t.string :float
      t.string :country
      t.string :string

      t.timestamps
    end
  end
end
