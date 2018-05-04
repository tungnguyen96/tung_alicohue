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
      f.input :avatar, as: :file
    end

    f.actions
  end
end
