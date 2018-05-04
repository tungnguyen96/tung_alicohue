ActiveAdmin.register CompanyInfo do
  permit_params :name, :website, :address, :intro
  config.filters = false

  index do
    id_column
    column :name
    column :website
    column :address
    column :intro

    actions
  end

  form do |f|
    f.inputs do
      f.input :name
      f.input :website
      f.input :address
      f.input :intro
    end

    f.actions
  end
end
