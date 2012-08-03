class CreateLogs < ActiveRecord::Migration
  def change
    create_table :logs, :id => false do |t|
      t.string :account_id
      t.string :user_id
      t.date :do_at
      t.string :difference
      t.integer :result_balance
      t.string :description

      t.timestamps
    end
  end
end
