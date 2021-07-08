class BooksController < ApplicationController
  def index
    @book = Book.all
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
