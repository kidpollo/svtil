class HomeController < ApplicationController
  def index
    # TODO: mejor algoritmo
    @authors = Author.scoped
  end
end
