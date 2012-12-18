class HomeController < ApplicationController
  def index
    # TODO: mejor algoritmo
    @authors = Author.scoped
  end

  def authors_stylesheets
    @authors = Author.all
    respond_to :css
  end
end
