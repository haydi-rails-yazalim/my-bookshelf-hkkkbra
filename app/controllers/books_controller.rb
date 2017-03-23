class BooksController < ApplicationController
  before_action :authenticate_user!
  before_action :find_book , only: [:edit , :show, :update, :destroy]


def new
    @book = Book.new
end

def create
  @book = Book.new(book_params)

  if @book.save
   redirect_to @book
 else
   render 'new'
 end
end

def show
end

def index
    @books = Book.all
end

def edit
end

def update
 if @book.update(book_params)
   redirect_to @book
 else
   render 'edit'
 end
end

def destroy
 @book.destroy
  redirect_to books_path
end

<<<<<<< HEAD
def add
  List.create(user_id: current_user.id, book_id: params[:id])
end
=======
>>>>>>> 6b0f5c6f43b4ee995220a1ae0e5b0e886517bd0d

 private

 def find_book
    @book = Book.find_by(id: params[:id])
 end

 def book_params
   params.require(:book).permit(:name, :description, :year, :author, :publisher, :number_of_pages)
 end

end
