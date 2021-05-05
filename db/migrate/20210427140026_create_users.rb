class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :username
      t.string :email
      t.string :location


        t.string :password_digest
        # !! IF YOU ARE BUILDING OUT YOUR (USER) MODEL IN ONE SHOT - Just Add This In One Time and MIGRATE

        # ELSE: You will need this in Terminal
        #    rails g migration AddPasswordToUsers password_digest




        # USE THIS IN TERMINAL TO CREATE ONE MIGRATION FOR A USER WITH A PASSWORD:  
        #    rails g resource user name email username password_digest
        # TAKE OUT WHOCH YOU WON'T USE -- email -vs- username -- UNLESS YOU WANT BOTH.. Then Carry On

      
      t.integer :age

      t.timestamps
    end
  end
end
