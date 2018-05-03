class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.belongs_to :sub_category, foreign_key: true

      t.timestamps
    end
  end
end
