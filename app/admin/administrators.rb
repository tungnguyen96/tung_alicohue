ActiveAdmin.register Administrator do
  permit_params :email, :password
  actions :all, except: :destroy
  config.filters = false

  index do
    id_column
    column :avatar
    column :email

    actions
  end

  form do |f|
    f.inputs do
      f.input :email
      f.input :password, confirmation: true
      f.input :phone
      f.input :mobile
      f.input :address
      f.input :fax
      f.input :position, as: :select, collection: ["giám đốc"]
      f.input :avatar, as: :file
    end

    f.actions
  end
end
