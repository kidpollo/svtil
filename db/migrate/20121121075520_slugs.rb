class Slugs < ActiveRecord::Migration
  def up
    add_column :posts, :slug, :string
    add_index  :posts, :slug, unique: true
    add_index  :posts, :author_id
    add_index  :authors, :domain, unique: true
  end

  def down
  end
end
