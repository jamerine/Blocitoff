class ItemsController < ApplicationController

  def create
    @item = Item.new(item_params)
    @item.user_id = current_user.id
    @new_item = Item.new

    if @item.save
      @message = "Item was saved."
    else
      @message = "There was an error saving the item.  Please try again."
    end

    respond_to do |format|
      format.html { result ? flash[:notice] = @message : flash[:alert] = @message }
      format.js
    end
  end

  def destroy
    @item = Item.find(params[:id])
    if @item.destroy
      @message = "\"#{@item.name}\" was deleted successfully."
    else
      @message = "There was an error deleting the item."
    end

    respond_to do |format|
      format.html { result ? flash[:notice] = @message : flash[:alert] = @message }
      format.js
    end

  end


  private

  def item_params
    params.require(:item).permit(:name)
  end
end
