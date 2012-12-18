class Post < ActiveRecord::Base
  extend FriendlyId
  friendly_id :subject, use: :slugged
  before_save :render_body
  
  attr_accessible :author_id, :body, :subject, :category, :rendered_body
  validates       :author_id, :body, :subject, presence: true
  belongs_to      :author

  scope :recent, lambda { |amount| order("created_at DESC").limit(amount) }

  private
  def render_body
    require 'redcarpet'
    renderer = Redcarpet::Render::HTML.new
    extensions = {fenced_code_blocks: true}
    redcarpet = Redcarpet::Markdown.new(renderer, extensions)
    self.rendered_body = redcarpet.render self.body
  end
end
