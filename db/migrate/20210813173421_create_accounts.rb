class CreateAccounts < ActiveRecord::Migration[6.1]
  def change
    create_table :accounts do |t|
      t.references :user, null: false, foreign_key: true
      t.string :type
      t.integer :number
      t.decimal :available_balance, precision: 10, scale: 2
      t.date :exp

      t.timestamps
    end
  end
end
