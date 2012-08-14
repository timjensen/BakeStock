class DocumentsController < ApplicationController
  respond_to :pdf
  
  def cust_orders
      @orders = Invoice.where("date = Date()")
      pdf = CustOrdersPdf.new(@orders)
      send_data pdf.render, filename: "Orders",
                            type: "application/pdf",
                            disposition: "inline"
  end
end
