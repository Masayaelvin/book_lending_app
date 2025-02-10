class CreateBooks < ActiveRecord::Migration[7.1]
  def change
    create_table :books do |t|
      t.string :title, null: false
      t.string :author, null: false
      t.string :isbn, null: false
      t.boolean :available, default: true

      t.timestamps
    end

    # Add a unique index to enforce ISBN uniqueness
    add_index :books, :isbn, unique: true
  end
end
