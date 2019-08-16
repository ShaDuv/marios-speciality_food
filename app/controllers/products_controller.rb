class ProductsController < ApplicationController
  def index
    @products = Product.all
    render :index
  end

  def new
    @product = Product.new
    render :new
  end

  def create
    params.permit!
    @product = Product.new(params[:product])
    if @product.save
      flash[:notice] = "New Product Added!"
      redirect_to products_path
    else
      render :new
    end
  end

  def edit
    @product = Product.find(params[:id])
    render :edit
  end

  def show
    @product = Product.find(params[:id])
    logger.info @product
    render :show
  end

  def update
    @product = Product.find(params[:id])
    params.permit!
    if @product.update(params[:product])
      redirect_to products_path
    else
      render :edit
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_path
  end
end
