class CreateCompanyInfos < ActiveRecord::Migration[5.2]
  def change
    create_table :company_infos do |t|
      t.string :name
      t.string :website
      t.string :address
      t.text :intro

      t.timestamps
    end
  end
end
