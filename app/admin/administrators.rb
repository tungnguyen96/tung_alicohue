ActiveAdmin.register Administrator do
  permit_params :email, :password, :avatar
  actions :all, except: :destroy
  config.filters = false

  index do
    id_column
    column :avatar { |admin| image_tag(admin.avatar.url(:thumb)) }
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
      f.input :avatar, as: :file, hint: image_tag(f.object.avatar.url(:thumb))
    end

    f.actions
  end
end
