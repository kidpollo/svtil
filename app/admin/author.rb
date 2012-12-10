ActiveAdmin.register Author do
  index do
    column :name
    column :domain
    column :hex
    column :bio
    column :email
    column :twitter
    column :website
    default_actions
  end

  filter :email

  form( html: {multipart: true} ) do |f|
    f.inputs "Admin Details" do
      f.input :name
      f.input :organization
      f.input :domain
      f.input :bio, as: :text
      f.input :email
      f.input :hex
      f.input :avatar, as: :file
      f.input :twitter
      f.input :website
    end
    f.buttons
  end
end
