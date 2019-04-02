require 'test_helper'

class CassettesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cassette = cassettes(:one)
  end

  test "should get index" do
    get cassettes_url
    assert_response :success
  end

  test "should get new" do
    get new_cassette_url
    assert_response :success
  end

  test "should create cassette" do
    assert_difference('Cassette.count') do
      post cassettes_url, params: { cassette: { formato_id: @cassette.formato_id, movie_id: @cassette.movie_id } }
    end

    assert_redirected_to cassette_url(Cassette.last)
  end

  test "should show cassette" do
    get cassette_url(@cassette)
    assert_response :success
  end

  test "should get edit" do
    get edit_cassette_url(@cassette)
    assert_response :success
  end

  test "should update cassette" do
    patch cassette_url(@cassette), params: { cassette: { formato_id: @cassette.formato_id, movie_id: @cassette.movie_id } }
    assert_redirected_to cassette_url(@cassette)
  end

  test "should destroy cassette" do
    assert_difference('Cassette.count', -1) do
      delete cassette_url(@cassette)
    end

    assert_redirected_to cassettes_url
  end
end
