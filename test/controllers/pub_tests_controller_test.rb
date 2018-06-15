require 'test_helper'

class PubTestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pub_test = pub_tests(:one)
  end

  test "should get index" do
    get pub_tests_url
    assert_response :success
  end

  test "should get new" do
    get new_pub_test_url
    assert_response :success
  end

  test "should create pub_test" do
    assert_difference('PubTest.count') do
      post pub_tests_url, params: { pub_test: { url: @pub_test.url } }
    end

    assert_redirected_to pub_test_url(PubTest.last)
  end

  test "should show pub_test" do
    get pub_test_url(@pub_test)
    assert_response :success
  end

  test "should get edit" do
    get edit_pub_test_url(@pub_test)
    assert_response :success
  end

  test "should update pub_test" do
    patch pub_test_url(@pub_test), params: { pub_test: { url: @pub_test.url } }
    assert_redirected_to pub_test_url(@pub_test)
  end

  test "should destroy pub_test" do
    assert_difference('PubTest.count', -1) do
      delete pub_test_url(@pub_test)
    end

    assert_redirected_to pub_tests_url
  end
end
