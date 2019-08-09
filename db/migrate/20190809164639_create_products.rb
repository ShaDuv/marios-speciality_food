class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.float :cost
      t.string :country

      t.timestamps
    end
  end
end
