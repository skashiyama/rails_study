class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :account_id
      t.string :user_id
      t.integer :balance

      t.timestamps
    end
  end
end
