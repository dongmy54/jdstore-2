class CartsController < ApplicationController

	def clean
        current_cart.clean!
        flash[:warning] = "已清空购物车"
        	redirect_to carts_path
	end

	def destroy
		@cart = current_cart
		if @cart.destroy
			redirect_to carts_path
		end
	end

end
