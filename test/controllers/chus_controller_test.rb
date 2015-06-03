require 'test_helper'

class ChusControllerTest < ActionController::TestCase
  setup do
    @chu = chus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:chus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create chu" do
    assert_difference('Chu.count') do
      post :create, chu: { additional_info: @chu.additional_info, address: @chu.address, available_date: @chu.available_date, base: @chu.base, bathroom: @chu.bathroom, bedroom: @chu.bedroom, cleaning_fee: @chu.cleaning_fee, description: @chu.description, latitude: @chu.latitude, longitude: @chu.longitude, pet: @chu.pet, price: @chu.price, sec_deposit: @chu.sec_deposit, smoking: @chu.smoking, tagline: @chu.tagline, type: @chu.type, user_id: @chu.user_id }
    end

    assert_redirected_to chu_path(assigns(:chu))
  end

  test "should show chu" do
    get :show, id: @chu
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @chu
    assert_response :success
  end

  test "should update chu" do
    patch :update, id: @chu, chu: { additional_info: @chu.additional_info, address: @chu.address, available_date: @chu.available_date, base: @chu.base, bathroom: @chu.bathroom, bedroom: @chu.bedroom, cleaning_fee: @chu.cleaning_fee, description: @chu.description, latitude: @chu.latitude, longitude: @chu.longitude, pet: @chu.pet, price: @chu.price, sec_deposit: @chu.sec_deposit, smoking: @chu.smoking, tagline: @chu.tagline, type: @chu.type, user_id: @chu.user_id }
    assert_redirected_to chu_path(assigns(:chu))
  end

  test "should destroy chu" do
    assert_difference('Chu.count', -1) do
      delete :destroy, id: @chu
    end

    assert_redirected_to chus_path
  end
end
