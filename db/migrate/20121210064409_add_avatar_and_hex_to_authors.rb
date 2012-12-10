class AddAvatarAndHexToAuthors < ActiveRecord::Migration
  def change
    add_column :authors, :avatar, :string
    add_column :authors, :hex, :string
  end
end
