class OrdersController < ApplicationController


  def index
  end

  def show
  end

  def create
  end

  def add_to_cart

    if current_user
    @order = get_cart_order
    current_product = order_product_params
    totalAmount = current_product[:quantity].to_i * current_product[:unit_price].to_i
    update_order = @order.update(totalAmount:totalAmount + @order.totalAmount)
    @order_product = find_or_update_order_product(@order, current_product)
    


    if update_order && @order_product.save
      redirect_to cart_url
    else
    redirect_back fallback_location: products_path
    end
  else
    redirect_to new_user_session_url, alert: 'Tienes que registrarte primero'
  end
  end

  def cart 
    @cart = get_cart_order
    puts @cart.inspect
  end

  private
  def get_cart_order 
    @current_order = current_user.order
    if @current_order.nil?
      @current_order = Order.create(user_id: current_user.id, state: :progress, totalAmount: 0 , is_cart: true)
    end
    @current_order
  end
  def find_or_update_order_product (order, order_product)
    @order_product = order.order_products.find_by(product_id:order_product[:product_id])
    if @order_product.nil?
      @order_product = OrderProduct.new(order_product.merge(order_id: order.id))
    else
      puts 'ACA',@order_product
      @order_product.quantity += order_product[:quantity].to_i
    end
    @order_product
  end
  def order_product_params
    params.fetch(:order_product, {}).permit(:quantity, :product_id, :unit_price)
  end
end
