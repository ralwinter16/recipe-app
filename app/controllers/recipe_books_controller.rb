class RecipeBooksController < ApplicationController
  before_action :set_recipe_book, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!
  # GET /recipe_books
  # GET /recipe_books.json
  def index
    @recipe_books = RecipeBook.all
  end

  # GET /recipe_books/1
  # GET /recipe_books/1.json
  def show
    @comment = Comment.new
  end

  # GET /recipe_books/new
  def new
    @recipe_book = RecipeBook.new
  end

  # GET /recipe_books/1/edit
  def edit
  end

  # POST /recipe_books
  # POST /recipe_books.json
  def create
    @recipe_book = RecipeBook.new(recipe_book_params)

    respond_to do |format|
      if @recipe_book.save
        format.html { redirect_to @recipe_book, notice: 'Recipe book was successfully created.' }
        format.json { render :show, status: :created, location: @recipe_book }
      else
        format.html { render :new }
        format.json { render json: @recipe_book.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recipe_books/1
  # PATCH/PUT /recipe_books/1.json
  def update
    respond_to do |format|
      if @recipe_book.update(recipe_book_params)
        format.html { redirect_to @recipe_book, notice: 'Recipe book was successfully updated.' }
        format.json { render :show, status: :ok, location: @recipe_book }
      else
        format.html { render :edit }
        format.json { render json: @recipe_book.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recipe_books/1
  # DELETE /recipe_books/1.json
  def destroy
    @recipe_book.destroy
    respond_to do |format|
      format.html { redirect_to recipe_books_url, notice: 'Recipe book was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recipe_book
      @recipe_book = RecipeBook.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def recipe_book_params
      params.require(:recipe_book).permit(:title, :instructions, :ingredients, :rating, :user_id, :photo)
    end
end
