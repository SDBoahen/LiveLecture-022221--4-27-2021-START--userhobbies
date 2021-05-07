class CreatePets < ActiveRecord::Migration[6.1]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :species
      
      t.boolean :hungry
        t.integer :hunger_bar, default: 0

      t.integer :age


      t.integer :user_id


      t.timestamps
    end
  end
end
