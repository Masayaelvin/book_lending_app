class CreateBorrowings < ActiveRecord::Migration[7.1]
  def change
    create_table :borrowings do |t|
      t.references :user, null: false, foreign_key: true
      t.references :book, null: false, foreign_key: true
      t.date :due_date, null: false
      t.boolean :returned, default: false

      t.timestamps
    end
  end
end
