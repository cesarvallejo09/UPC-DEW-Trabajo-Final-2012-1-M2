require 'test_helper'

class NoteClientsControllerTest < ActionController::TestCase
  setup do
    @note_client = note_clients(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:note_clients)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create note_client" do
    assert_difference('NoteClient.count') do
      post :create, note_client: @note_client.attributes
    end

    assert_redirected_to note_client_path(assigns(:note_client))
  end

  test "should show note_client" do
    get :show, id: @note_client
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @note_client
    assert_response :success
  end

  test "should update note_client" do
    put :update, id: @note_client, note_client: @note_client.attributes
    assert_redirected_to note_client_path(assigns(:note_client))
  end

  test "should destroy note_client" do
    assert_difference('NoteClient.count', -1) do
      delete :destroy, id: @note_client
    end

    assert_redirected_to note_clients_path
  end
end
