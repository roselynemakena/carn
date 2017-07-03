require 'test_helper'

class MenusControllerTest < ActionController::TestCase
  setup do
    @restaurant = restaurants(:one)
    @menu = menus(:one)
  end

  test "should get index" do
    get :index, params: { restaurant_id: @restaurant }
    assert_response :success
  end

  test "should get new" do
    get :new, params: { restaurant_id: @restaurant }
    assert_response :success
  end

  test "should create menu" do
    assert_difference('Menu.count') do
      post :create, params: { restaurant_id: @restaurant, menu: @menu.attributes }
    end

    assert_redirected_to restaurant_menu_path(@restaurant, Menu.last)
  end

  test "should show menu" do
    get :show, params: { restaurant_id: @restaurant, id: @menu }
    assert_response :success
  end

  test "should get edit" do
    get :edit, params: { restaurant_id: @restaurant, id: @menu }
    assert_response :success
  end

  test "should update menu" do
    put :update, params: { restaurant_id: @restaurant, id: @menu, menu: @menu.attributes }
    assert_redirected_to restaurant_menu_path(@restaurant, Menu.last)
  end

  test "should destroy menu" do
    assert_difference('Menu.count', -1) do
      delete :destroy, params: { restaurant_id: @restaurant, id: @menu }
    end

    assert_redirected_to restaurant_menus_path(@restaurant)
  end
end
