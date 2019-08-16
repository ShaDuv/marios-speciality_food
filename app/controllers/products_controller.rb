class ProductsController < ApplicationController
  def index
    params.permit!
    @products = Product.all
    @top_three = Product.three_most_recent
    @usa = Product.usa
    @top_review = Product.top_review
    render :index
  end

  def new
    params.permit!
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
    params.permit!
    @product = Product.find(params[:id])
    render :edit
  end

  def show
    params.permit!
    @product = Product.find(params[:id])
    logger.info @product
    render :show
  end

  def update
    params.permit!
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
