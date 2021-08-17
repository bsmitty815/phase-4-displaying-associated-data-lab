class UsersController < ApplicationController
    

    # returns a user with an array of all items associated with that user
    def show
        user = User.find_by(id: params[:id])
        render json: user, include: :items
        #the include option will let us nest associated data in our response
    end
end
