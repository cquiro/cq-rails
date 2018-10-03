ActiveAdmin.register User do
  permit_params :first_name, :last_name, :email, :locale

  filter :first_name
  filter :last_name
  filter :email
  filter :locale
  filter :created_at
  filter :updated_at

  index do
    selectable_column
    id_column
    column :first_name
    column :last_name
    column :email
    column :locale
    column :created_at
    column :updated_at
  end
end
