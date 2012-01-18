require 'test_helper'

class AktivitetsControllerTest < ActionController::TestCase
  setup do
    @aktivitet = aktivitets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:aktivitets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create aktivitet" do
    assert_difference('Aktivitet.count') do
      post :create, aktivitet: @aktivitet.attributes
    end

    assert_redirected_to aktivitet_path(assigns(:aktivitet))
  end

  test "should show aktivitet" do
    get :show, id: @aktivitet.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @aktivitet.to_param
    assert_response :success
  end

  test "should update aktivitet" do
    put :update, id: @aktivitet.to_param, aktivitet: @aktivitet.attributes
    assert_redirected_to aktivitet_path(assigns(:aktivitet))
  end

  test "should destroy aktivitet" do
    assert_difference('Aktivitet.count', -1) do
      delete :destroy, id: @aktivitet.to_param
    end

    assert_redirected_to aktivitets_path
  end
end
