module Recursion
  class FriendsController < ApplicationController
    def show
      render :json => Friend.create(params[:level])
    end
  end
end
