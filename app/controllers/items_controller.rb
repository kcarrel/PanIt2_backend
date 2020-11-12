class ItemsController < ApplicationController

    def index 
        collection = Collection.find_by(user_id: current_user.id)
        @items = Item.all.where(collection_id: collection.id)
        render :json => @items
    end

    def create
        collection = Collection.find_by(user_id: current_user.id)
        @item = Item.create(
            collection_id: collection.id,
            name: item_params[:name],
            brand: item_params[:brand],
            notes: item_params[:notes],
            favorite: item_params[:favorite]
        )
        render json: {status: "success", code: 200, message: "Item added to your collection!"}
        
    end

    private

    def item_params
        params.require(:item).permit(:name, :brand, :notes, :favorite)
    end

end
