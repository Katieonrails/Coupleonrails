require 'test_helper'

class TestModelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @test_model = test_models(:one)
  end

  test "should get index" do
    get test_models_url
    assert_response :success
  end

  test "should get new" do
    get new_test_model_url
    assert_response :success
  end

  test "should create test_model" do
    assert_difference('TestModel.count') do
      post test_models_url, params: { test_model: { body: @test_model.body, city_id: @test_model.city_id, conversion_rate: @test_model.conversion_rate, publish_at: @test_model.publish_at, published: @test_model.published, state_id: @test_model.state_id, title: @test_model.title, views_counter: @test_model.views_counter } }
    end

    assert_redirected_to test_model_url(TestModel.last)
  end

  test "should show test_model" do
    get test_model_url(@test_model)
    assert_response :success
  end

  test "should get edit" do
    get edit_test_model_url(@test_model)
    assert_response :success
  end

  test "should update test_model" do
    patch test_model_url(@test_model), params: { test_model: { body: @test_model.body, city_id: @test_model.city_id, conversion_rate: @test_model.conversion_rate, publish_at: @test_model.publish_at, published: @test_model.published, state_id: @test_model.state_id, title: @test_model.title, views_counter: @test_model.views_counter } }
    assert_redirected_to test_model_url(@test_model)
  end

  test "should destroy test_model" do
    assert_difference('TestModel.count', -1) do
      delete test_model_url(@test_model)
    end

    assert_redirected_to test_models_url
  end
end
