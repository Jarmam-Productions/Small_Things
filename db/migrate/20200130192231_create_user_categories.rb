class CreateUserCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :user_categories do |t|
      t.references :user, foreign_key: true
      t.references :category, foreign_key: true
      t.boolean :user_category_preference
      t.integer :time_length_preference
      t.integer :offered_counter

      t.timestamps
    end
  end
end