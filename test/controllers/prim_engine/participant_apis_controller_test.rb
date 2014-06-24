require 'test_helper'

module PrimEngine
  class ParticipantApisControllerTest < ActionController::TestCase
    setup do
      @participant_api = participant_apis(:one)
    end

    test "should get index" do
      get :index
      assert_response :success
      assert_not_nil assigns(:participant_apis)
    end

    test "should get new" do
      get :new
      assert_response :success
    end

    test "should create participant_api" do
      assert_difference('ParticipantApi.count') do
        post :create, participant_api: { date_of_birth: @participant_api.date_of_birth, email: @participant_api.email, last_name: @participant_api.last_name, phone: @participant_api.phone }
      end

      assert_redirected_to participant_api_path(assigns(:participant_api))
    end

    test "should show participant_api" do
      get :show, id: @participant_api
      assert_response :success
    end

    test "should get edit" do
      get :edit, id: @participant_api
      assert_response :success
    end

    test "should update participant_api" do
      patch :update, id: @participant_api, participant_api: { date_of_birth: @participant_api.date_of_birth, email: @participant_api.email, last_name: @participant_api.last_name, phone: @participant_api.phone }
      assert_redirected_to participant_api_path(assigns(:participant_api))
    end

    test "should destroy participant_api" do
      assert_difference('ParticipantApi.count', -1) do
        delete :destroy, id: @participant_api
      end

      assert_redirected_to participant_apis_path
    end
  end
end
