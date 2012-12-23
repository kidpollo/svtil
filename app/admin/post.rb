ActiveAdmin.register Post do
  filter :author, :as => :select, :collection => proc { Author.all }

  index do
    column :subject
    column :author
    column :category
    column :created_at
    default_actions
  end

  filter :email

  form do |f|
    f.inputs "Admin Details" do
      f.input :subject
      f.input :category
      f.input :body,   as: :text
      f.input :author, as: :select, collection: Author.all
    end
    f.buttons
  end
end
