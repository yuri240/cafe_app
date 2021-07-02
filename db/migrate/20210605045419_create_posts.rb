class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :title, null: false
      t.integer :favorite_id, null: false
      t.integer :area_id, null: false
      t.integer :price_id, null: false
      t.string :impression, null: false
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
