class ItemsController < ApplicationController

    def index 
        collection = Collection.find_by(user_id: current_user.id)
        @items = Item.all.where(collection_id: collection.id)
        render :json => @items
    end
end
