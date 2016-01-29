class ItemsController < ApplicationController

  def create
    @user = User.find(params[:user_id])
    @item = current_user.items.create(item_params)
    redirect_to current_user

    if @item.save
      flash[:notice] = "Item was saved."
      redirect_to current_user
    else
      flash.now[:alert] = "There was an error saving the item.  Please try again."
      redirect_to
    end
  end

  private

  def item_params
    params.require(:item).permit(:name)
  end
end
