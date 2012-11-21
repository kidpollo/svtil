class Post < ActiveRecord::Base
  extend FriendlyId
  friendly_id :subject, use: :slugged
  
  attr_accessible :author_id, :body, :subject
  validates       :author_id, :body, :subject, presence: true
  belongs_to      :author

  scope :recent, lambda { |amount| order("created_at DESC").limit(amount) }
end
