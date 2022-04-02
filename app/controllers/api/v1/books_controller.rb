module Api
  module V1
    class BooksController < ApplicationController

      def index
        books = Book.all
        render json: BooksRepresenter.new(books).as_json
      end

      def create
        author = Author.create!(author_params)
        book = Book.new(books_params.merge(author_id: author.id))
        if book.save
          render json: book, status: :created
        else
          render json: book.errors, status: :unprocessable_entity
        end
      end

      def destroy
        Book.find(params[:id]).destroy! # used ! becouse it return (true or false)it will rais errors if id not found
        
        head :no_content
      end
      
      private
    
      def books_params
        params.require(:book).permit(:title)
      end 

      def author_params
        params.require(:author).permit(:first_name,:last_name,:age)
      end
    end
  end 
end