class BooksController < ApplicationController
  def index
    @book = Book.all
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to book_path(@book.id)
      #notice: 'Book was sccessfully updated.'
      flash[:notice_create]="Book was sccessfully created."
    else
     flash.now[:alert] = 'メッセージを入力してください。'
    end
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end

  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to books_path
  end

  def update
    book = Book.find(params[:id])
    if book.update(book_params)
    redirect_to book_path(book.id)
    flash[:notice_update]="Book was sccessfully created."
    else
    flash.now[:alert] = 'メッセージを入力してください。'
    end
  end

  private
    def book_params
      params.require(:book).permit(:title, :body)
    end
end
