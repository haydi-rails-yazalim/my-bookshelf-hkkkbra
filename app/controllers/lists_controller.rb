class ListsController < ApplicationController
<<<<<<< HEAD
before_filter :authenticate_user!

    def index
    end

    def show
    @list = List.find(:id)
  end
=======
before_filter :authenticate_user! 

    def index
    end
>>>>>>> 6b0f5c6f43b4ee995220a1ae0e5b0e886517bd0d
end
