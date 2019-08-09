class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.string :author
      t.string :string
      t.string :content_body
      t.string :string
      t.string :rating
      

      t.timestamps
    end
  end
end
