ActiveAdmin.register Product do
  permit_params :name, :description, :sub_category_id

  index do
    id_column
    column :email

    actions
  end

  filter :name
  filter :sub_category
  filter :category

  form do |f|
    f.inputs do
      f.input :name
      f.input :description
      f.input :sub_category, as: :select, collection: SubCategory.all.map{ |c| [c.title, c.id] }
    end

    f.actions
  end
end
