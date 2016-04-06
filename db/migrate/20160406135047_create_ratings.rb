class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :user_id
      t.integer :post_id
      t.integer :score
      t.text :body

      t.timestamps null: false
    end
  end
end
