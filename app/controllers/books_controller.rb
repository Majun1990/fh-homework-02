class BooksController < ApplicationController
    def index
        if
        @books = Book.search(params[:search], params[:id])
        else
           @books = Book.all 
        end
    end
    
    def new
        @book = Book.new
        redirect_to books_path
    end

    def show
        @book = Book.find(params[:id])
    end

    def edit
        @book = Book.find(params[:id])
    end

    def update
        @book = Book.find(params[:id])
        @book.update_attributes(book_params)
        redirect_to book_path
    end

    def destroy
        @book = Book.find(params[:id])
        @book.destroy
        redirect_to books_path
    end

    private

    def book_params
        params.require(:book).permit(:title, :author, :genre, :classification, :book_type, :year)
    end

end
