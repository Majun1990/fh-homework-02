class BooksController < ApplicationController
    def index
        @books = Book.all
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
        @book.update_attributes(:title, :author, :book_type, :genre, :classification, :year)
        redirect_to books_path
    end



    def destroy
        @book = Book.find(params[:id])
        @book.destroy
        redirect_to books_path
    end
end
