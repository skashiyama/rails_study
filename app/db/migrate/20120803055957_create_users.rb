class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :user_id
      t.string :firstname
      t.string :lastname
      t.string :password
      t.string :phone_number
      t.string :account_id

      t.timestamps
    end
  end
end
