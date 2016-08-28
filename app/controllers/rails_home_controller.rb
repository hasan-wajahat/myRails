class RailsHomeController < ApplicationController
  def index
    @recipes = RecipeList.find_each
  end
end
