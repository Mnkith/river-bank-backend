class CreateTransactions < ActiveRecord::Migration[6.1]
  def change
    create_table :transactions , force: :cascade do |t|
      t.references :user, null: false, foreign_key: true
      t.references :account, null: false, foreign_key: true
      t.string :type
      t.decimal :amount, precision: 10, scale: 2
      t.text :description

      t.timestamps
    end
  end
end
