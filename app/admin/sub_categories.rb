ActiveAdmin.register SubCategory do
  permit_params :title, :category_id

  index do
    id_column
    column :title
    column :catetgory

    actions
  end

  filter :category

  form do |f|
    f.inputs do
      f.input :title
      f.input :category, as: :select , collection: Category.all.map{ |c| [c.title, c.id] }
    end

    f.actions
  end
end
