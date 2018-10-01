class CreateBookSuggestions < ActiveRecord::Migration[5.2]
  def change
    create_table :book_suggestions do |t|
      t.string :synopsis, default: ''
      t.float :price, default: 0.0
      t.string :author, null: false, default: ''
      t.string :title, null: false, default: ''
      t.string :link, null: false, default: ''
      t.string :publisher, null: false, default: ''
      t.string :year, null: false, default: ''
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
