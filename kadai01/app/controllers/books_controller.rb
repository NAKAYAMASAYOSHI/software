class BooksController < ApplicationController

  # GET /books
  def index
    @books = Book.all
  end

  # GET /books/:id
  def show
    @book = Book.find(params[:id])
  end

  # GET /books/new
  def new
    @book = Book.new
  end

  # POST /books
  def create
    book = Book.new(
      title: params[:book][:title],
      author: params[:book][:author],
      published_year: params[:book][:published_year]
    )
    book.save
    redirect_to '/books'
  end

  # GET /books/:id/edit
  def edit
    @book = Book.find(params[:id])
  end

  # PATCH/PUT /books/:id
  def update
    book = Book.find(params[:id])
    book.update(
      title: params[:book][:title],
      author: params[:book][:author],
      published_year: params[:book][:published_year]
    )
    redirect_to '/books'
  end

  # DELETE /books/:id
  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to '/books'
  end
end
