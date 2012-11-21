class Author < ActiveRecord::Base
  attr_accessible :bio, :email, :name, :twitter, :website, :domain, :organization
  has_many   :posts
  validates  :name, :domain, :presence => true

  has_one :featured_post, order:"created_at DESC", class_name:'Post'
end
