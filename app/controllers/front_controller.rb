class FrontController < ApplicationController
  def index
    @categories = Category.includes(:products)
  end

  def intro
  end

  def contact
  end
end
