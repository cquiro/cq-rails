ActiveAdmin.register User do
  permit_params :first_name, :last_name, :email, :locale

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
