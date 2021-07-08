class BooksController < ApplicationController
  def index
    @book = Book.all
  end

  def create
    book = Blog.new(book_params)
    book.save
    redirect_to books_path
  end

  def show
  end

  def edit
  end

  private
    def list_params
      params.require(:list).permit(:title, :body)
    end
end
