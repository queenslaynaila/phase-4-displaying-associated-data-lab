class ItemsController < ApplicationController
  def show
    item = Item.find_by(id: params[:id])
    render json: item, include: :users
  end
  def index
    item = Item.all
    render json: item, include: :user
  end
end
