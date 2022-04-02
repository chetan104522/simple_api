require 'rails_helper'

describe "Books Api", type: :request do
  describe "GET /books" do
    before do 
      FactoryBot.create(:book, title: 'new title for rspec')
      FactoryBot.create(:book, title: 'new title fot the respec 2 ')
    end
    it 'returns all books ' do 
  
      get '/api/v1/books'
     
      expect(response).to  have_http_status(:success) 
      expect(JSON.parse(response.body).size).to eq(3)
    end
  end

  describe "POST /books" do
    it "create a new book" do 
      expect {
        post '/api/v1/books', params: 
          {
           book: {title: 'ggg'},
           author: {first_name: 'ram',last_name: 'patel',age: 23}
          }
      }.to change { Book.count }.from(1).to(2)

      expect(response).to have_http_status(:created)
      expect(Author.count).to eq(1)
    end
  end

  describe "DELETE /books/:id" do 
    let!(:book) { FactoryBot.create(:book, title: 'new title for rspec',author: 'nice author') }

    it 'deletes  a records' do
      expect {
        delete "/api/v1/books/#{book.id}"
      }.to change {Book.count}.from(2).to(1)
      expect(response).to have_http_status(:no_content)
    end
  end
end 

   