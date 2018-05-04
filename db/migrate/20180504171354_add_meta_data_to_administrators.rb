class AddMetaDataToAdministrators < ActiveRecord::Migration[5.2]
  def change
    add_column :administrators, :phone, :string
    add_column :administrators, :mobile, :string
    add_column :administrators, :address, :string
    add_column :administrators, :fax, :string
    add_column :administrators, :position, :string
  end
end
