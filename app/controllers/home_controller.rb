class HomeController < ApplicationController
  def index
    @authors = Author.scoped
  end
end
