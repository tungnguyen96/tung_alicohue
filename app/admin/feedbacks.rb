ActiveAdmin.register Feedback do
  permit_params :email, :content
  actions :index, :show, :destroy

  index do
    id_column
    column :email
    column :content

    actions
  end

  filter :created_at
end
