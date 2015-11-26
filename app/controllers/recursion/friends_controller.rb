module Recursion
  class FriendsController < ApplicationController
    def show
      render :json => Friend.create(params[:level]), serializer: LevelSerializer, root: false
    end
  end
end
