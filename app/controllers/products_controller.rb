class ProductsController < ApplicationController
    def index

    end
    def add
        @cart = cart
        @cart << params[:product]
        session[:cart] = @cart
        redirect_to "/"
    end
end