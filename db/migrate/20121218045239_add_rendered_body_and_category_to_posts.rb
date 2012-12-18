class AddRenderedBodyAndCategoryToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :rendered_body, :text
    add_column :posts, :category, :string
  end
end
