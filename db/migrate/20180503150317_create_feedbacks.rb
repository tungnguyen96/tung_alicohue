class CreateFeedbacks < ActiveRecord::Migration[5.2]
  def change
    create_table :feedbacks do |t|
      t.string :email
      t.string :content

      t.timestamps
    end
  end
end
