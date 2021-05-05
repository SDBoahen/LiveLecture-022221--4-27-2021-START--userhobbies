class CreateYsers < ActiveRecord::Migration[6.1]
  def change
    create_table :ysers do |t|   # NOT OUR ACTUAL (USER) 😅  -  Just Demonstrative 
      t.string :name
      t.string :email
      t.string :username
      t.string :password_digest

      # USE THIS IN TERMINAL TO CREATE THIS MIGRATION:  rails g resource name user email username password_digest

      t.timestamps
    end
  end
end
