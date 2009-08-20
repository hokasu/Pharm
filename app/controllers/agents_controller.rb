class AgentsController < ApplicationController
  def index
    @agents = Product.all
  end

  def show
    @agent = Agent.find(params[:id])
  end
end

