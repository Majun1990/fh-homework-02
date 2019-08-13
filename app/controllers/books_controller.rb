class BooksController < ApplicationController
    def index
        @books = Books.all
    end

    def create
        @book = Book.new
        
    end

    def update
        @book = Book.find(params[:id])
        
    end

    def show
        @book = Book.find(params[:id])
    end

    def destroy
        @book = Book.find(params[:id])
    end
end
