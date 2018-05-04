ActiveAdmin.register Category do
  permit_params :title
  config.filters = false

  index do
    id_column
    column :title

    actions
  end

  form do |f|
    f.inputs do
      f.input :title
    end

    f.actions
  end
end
