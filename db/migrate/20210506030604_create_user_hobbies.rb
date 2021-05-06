class CreateUserHobbies < ActiveRecord::Migration[6.1]
  def change
    create_table :user_hobbies do |t|
      t.string :utensil
      t.integer :time_spent
      t.boolean :enjoying

      
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :hobby, null: false, foreign_key: true

      t.timestamps
    end
  end
end
