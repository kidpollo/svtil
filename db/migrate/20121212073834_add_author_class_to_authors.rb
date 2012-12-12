class AddAuthorClassToAuthors < ActiveRecord::Migration
  def change
    add_column :authors, :author_class, :string
  end
end
