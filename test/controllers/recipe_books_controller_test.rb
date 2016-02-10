require 'test_helper'

class RecipeBooksControllerTest < ActionController::TestCase
  setup do
    @recipe_book = recipe_books(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:recipe_books)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create recipe_book" do
    assert_difference('RecipeBook.count') do
      post :create, recipe_book: { ingredients: @recipe_book.ingredients, instructions: @recipe_book.instructions, rating: @recipe_book.rating, title: @recipe_book.title, user_id: @recipe_book.user_id }
    end

    assert_redirected_to recipe_book_path(assigns(:recipe_book))
  end

  test "should show recipe_book" do
    get :show, id: @recipe_book
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @recipe_book
    assert_response :success
  end

  test "should update recipe_book" do
    patch :update, id: @recipe_book, recipe_book: { ingredients: @recipe_book.ingredients, instructions: @recipe_book.instructions, rating: @recipe_book.rating, title: @recipe_book.title, user_id: @recipe_book.user_id }
    assert_redirected_to recipe_book_path(assigns(:recipe_book))
  end

  test "should destroy recipe_book" do
    assert_difference('RecipeBook.count', -1) do
      delete :destroy, id: @recipe_book
    end

    assert_redirected_to recipe_books_path
  end
end
