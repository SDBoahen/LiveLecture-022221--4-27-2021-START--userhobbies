class CreateHobbies < ActiveRecord::Migration[6.1]
  def change
    create_table :hobbies do |t|
      t.string :name
      t.string :description


      t.timestamps

      
      #  TERMINAL CODE
      #  rails g resource Hobby name description   

    end
  end
end
