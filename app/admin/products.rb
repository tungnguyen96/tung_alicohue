ActiveAdmin.register Product do
  permit_params :name, :description, :sub_category_id

  index do
    id_column
    column :avatar
    column :name
    column :description

    actions
  end

  filter :name
  filter :sub_category
  filter :category

  form do |f|
    f.inputs do
      f.input :name
      f.input :description, as: :quill_editor
      f.input :avatar
      f.input :sub_category, as: :select, collection: SubCategory.all.map{ |c| [c.title, c.id] }
    end

    f.actions
  end
end
