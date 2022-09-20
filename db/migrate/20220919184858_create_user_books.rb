class CreateUserBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :user_books do |t|
      t.string :user_id
      t.integer :book_id

      t.timestamps
    end
  end
end
