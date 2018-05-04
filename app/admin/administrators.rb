ActiveAdmin.register Administrator do
  permit_params :email, :password, :avatar
  actions :all, except: :destroy
  config.filters = false

  index do
    id_column
    column :avatar do |admin|
      image_tag(admin.avatar.url(:thumb)) unless admin.avatar.exist?
    end
    column :email
    column :position

    actions
  end

  form do |f|
    f.inputs do
      f.input :email
      f.input :password, confirmation: true, required: false
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
