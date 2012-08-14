class CustOrdersPdf < Prawn::Document
  def initialize(order)
    super()
    @orders = order
    @date = Date.today
    @i = 1
    title
    orders
  end
  
  def title
    text "Orders for production #{@date}", align: :center, size: 30, style: :bold
  end
  
  def orders
    @orders.each do |order|
      move_down 10
      text "#{order.customer}", style: :bold
      order.invoice_items.map do |item|
        indent (20) do
        text "#{item.prod}  x#{item.quanity}"
        end
      end
    end
    
  end
end