ActiveAdmin.register CompanyInfo do
  permit_params :name, :website, :address, :intro, :avatar

  index do
    id_column
    column :name
    column :website
    column :address
    actions
  end

  form do |f|
    f.inputs do
      f.input :name
      f.input :website
      f.input :address
      f.input :intro, as: :quill_editor
      f.input :avatar, as: :file
    end

    f.actions
  end
end
