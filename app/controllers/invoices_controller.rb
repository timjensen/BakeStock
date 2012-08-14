class InvoicesController < ApplicationController
  
  def new
    @invoice = Invoice.new
    @invoice.invoice_items.build 
  end
  
  def index
    @invoices = Invoice.all
    @invoices_by_date = @invoices.group_by(&:date)
    @date = params[:date] ? Date.parse(params[:date]) : Date.today
  end
  
  def show
    @invoice = Invoice.find(params[:id])
  end
  
  def create
  @invoice = Invoice.new(params[:invoice])
    if @invoice.save
      flash[:notice] = "Successfully created customer order."
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
      redirect_to @invoice, notice: "Successfully updated customer order."
    else
      render 'edit'
    end
  end

  def destroy
    @invoice = Invoice.find(params[:id])
    @invoice.destroy
    redirect_to invoices_url, notice: "Successfully destroyed customer order."
  end
end
