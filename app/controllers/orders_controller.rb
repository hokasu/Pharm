class OrdersController < ApplicationController

  def index
    @orders = Order.all
  end

  def show
    @order = Order.find(params[:id])
  end

  def new
    @order = Order.new
    respond_to do |format| 
      format.html 
      format.iphone { render :layout => false }
    end
  end
