class ProductsController < ApplicationController

  def index
    @product = Product.new
    @products = Product.all
  end

  def add 
    @product = Product.new  #create
  end

  def create
    #"product"=>{"product_name"=>"123asdasd", "product_value"=>"1123"}
    @product = Product.create(params[:product])

    if @product.save
      redirect_to products_add_path, notice: "success"
    else
      flash[alert] = "fail"
      render :new
    end
  end

  private

  def product_params
    params.require(:product).permit(:product_name, :product_value)
  end
end
