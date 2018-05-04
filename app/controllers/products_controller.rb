class ProductsController < ApplicationController
  def index
    @category = SubCategory.find_by id: params[:category_id]
    @products = @category.products
  end

  def show
    @product = Product.find_by id: params[:id]
    @related_products = Product.where(sub_category_id: @product.sub_category_id)
                               .where.not(id: @product.id)
  end

  private

  def find_product
  end
end
