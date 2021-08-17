class ItemsController < ApplicationController
    
    # returns an array of all items with user info
    def index
        items = Item.all
        render json: items, include: :user
    end
end
