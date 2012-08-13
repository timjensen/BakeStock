class InvoicesController < ApplicationController
  
  def new
    @invoice = Invoice.new
    @invoice.invoice_items.build 
  end
  
  def index
    @invoices = Invoice.all
  end
  
  def show
    @invoice = Invoice.find(params[:id])
  end
  
  def create
  @invoice = Invoice.new(params[:invoice])
    if @invoice.save
      flash[:notice] = "Successfully created invoice."
      redirect_to invoice_path(@invoice)
    else
      render 'new'
    end
  end
  
  def edit
    @invoice = Invoice.find(params[:id])
  end

  def update
    @invoice = Invoice.find(params[:id])
    if @invoice.update_attributes(params[:invoice])
      redirect_to @invoice, notice: "Successfully updated invoice."
    else
      render 'edit'
    end
  end

  def destroy
    @invoice = Invoice.find(params[:id])
    @invoice.destroy
    redirect_to surveys_url, notice: "Successfully destroyed survey."
  end
end
