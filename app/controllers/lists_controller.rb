class ListsController < ApplicationController
before_filter :authenticate_user!

    def index
    end

    def show
    @list = List.find(:id)
  end
end
