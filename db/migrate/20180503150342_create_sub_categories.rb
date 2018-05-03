class CreateSubCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :sub_categories do |t|
      t.string :title
      t.belongs_to :category, foreign_key: true

      t.timestamps
    end
  end
end
