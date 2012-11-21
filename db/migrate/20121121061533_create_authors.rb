class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :name
      t.string :organization
      t.string :domain
      t.string :website
      t.string :twitter
      t.string :email
      t.text   :bio

      t.timestamps
    end
  end
end
