class AuthorsController < ApplicationController
    def new
        @author = Author.new
    end
    
    def create
        Author.create(params[:id])
    end

    
end
