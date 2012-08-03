require 'test_helper'

class ProspectusControllerTest < ActionController::TestCase
  setup do
    @prospectu = prospectus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:prospectus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create prospectu" do
    assert_difference('Prospectu.count') do
      post :create, prospectu: @prospectu.attributes
    end

    assert_redirected_to prospectu_path(assigns(:prospectu))
  end

  test "should show prospectu" do
    get :show, id: @prospectu
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @prospectu
    assert_response :success
  end

  test "should update prospectu" do
    put :update, id: @prospectu, prospectu: @prospectu.attributes
    assert_redirected_to prospectu_path(assigns(:prospectu))
  end

  test "should destroy prospectu" do
    assert_difference('Prospectu.count', -1) do
      delete :destroy, id: @prospectu
    end

    assert_redirected_to prospectus_path
  end
end
