class PostsController < ApplicationController
  before_filter :set_current_author_or_redirect

  def index
    @posts = @current_author.posts.page(params[:page])
  end

  def show
    @post = @current_author.posts.find(params[:id])
  end

  private

  def set_current_author_or_redirect
    unless @current_author = Author.find_by_domain(request.host)
      redirect_to root_url(host: DEFAULT_HOST)
    end
  end
end
