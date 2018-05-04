ActiveAdmin.register CompanyInfo do
  permit_params :name, :website, :address, :intro
  config.filters = false

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
    end

    f.actions
  end
end
