class CreateOutfits < ActiveRecord::Migration[6.1]
  def change
    create_table :outfits do |t|
      t.string :name
      t.string :top
      t.string :bottom
      t.boolean :is_full_piece
      t.string :full_piece
      t.string :shoes
      t.string :head_covering
      t.string :accessory
      t.boolean :heat
      t.float :price
      t.integer :times_worn
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
