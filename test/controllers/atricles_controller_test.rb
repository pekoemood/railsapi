require "test_helper"

class AtriclesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @atricle = atricles(:one)
  end

  test "should get index" do
    get atricles_url, as: :json
    assert_response :success
  end

  test "should create atricle" do
    assert_difference("Atricle.count") do
      post atricles_url, params: { atricle: { body: @atricle.body, name: @atricle.name, title: @atricle.title } }, as: :json
    end

    assert_response :created
  end

  test "should show atricle" do
    get atricle_url(@atricle), as: :json
    assert_response :success
  end

  test "should update atricle" do
    patch atricle_url(@atricle), params: { atricle: { body: @atricle.body, name: @atricle.name, title: @atricle.title } }, as: :json
    assert_response :success
  end

  test "should destroy atricle" do
    assert_difference("Atricle.count", -1) do
      delete atricle_url(@atricle), as: :json
    end

    assert_response :no_content
  end
end
