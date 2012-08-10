class SuppliersController < ApplicationController
  
  def new
    @supplier = Supplier.new
  end
  
  def index
    @suppliers = Supplier.all
  end
  
  def show
    @supplier = Supplier.find(params[:id])
  end
  
  def create
  @supplier = Supplier.new(params[:supplier])
    if @supplier.save
      flash[:notice] = "Successfully created supplier."
      redirect_to supplier_path(@supplier)
    else
      render 'suppliers/new'
    end
  end
  
  def edit
    @supplier = Supplier.find(params[:id])
  end

  def update
    @supplier = Supplier.find(params[:id])
    if @supplier.update_attributes(params[:invoice])
      redirect_to @supplier, notice: "Successfully updated supplier."
    else
      render :edit
    end
  end
end
