class HomeController < ApplicationController
  def homepage
  	@categories = Category.all
  	@recipes = Recipe.all
  end

  def help
  end

  def about_us
  end
end
