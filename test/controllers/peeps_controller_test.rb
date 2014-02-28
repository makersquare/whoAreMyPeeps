require 'test_helper'

class PeepsControllerTest < ActionController::TestCase
  setup do
    @peep = peeps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:peeps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create peep" do
    assert_difference('Peep.count') do
      post :create, peep: { name: @peep.name, role: @peep.role }
    end

    assert_redirected_to peep_path(assigns(:peep))
  end

  test "should show peep" do
    get :show, id: @peep
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @peep
    assert_response :success
  end

  test "should update peep" do
    patch :update, id: @peep, peep: { name: @peep.name, role: @peep.role }
    assert_redirected_to peep_path(assigns(:peep))
  end

  test "should destroy peep" do
    assert_difference('Peep.count', -1) do
      delete :destroy, id: @peep
    end

    assert_redirected_to peeps_path
  end
end
