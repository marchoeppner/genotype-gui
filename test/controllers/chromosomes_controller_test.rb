require 'test_helper'

class ChromosomesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @chromosome = chromosomes(:one)
  end

  test "should get index" do
    get chromosomes_url
    assert_response :success
  end

  test "should get new" do
    get new_chromosome_url
    assert_response :success
  end

  test "should create chromosome" do
    assert_difference('Chromosome.count') do
      post chromosomes_url, params: { chromosome: { name: @chromosome.name } }
    end

    assert_redirected_to chromosome_url(Chromosome.last)
  end

  test "should show chromosome" do
    get chromosome_url(@chromosome)
    assert_response :success
  end

  test "should get edit" do
    get edit_chromosome_url(@chromosome)
    assert_response :success
  end

  test "should update chromosome" do
    patch chromosome_url(@chromosome), params: { chromosome: { name: @chromosome.name } }
    assert_redirected_to chromosome_url(@chromosome)
  end

  test "should destroy chromosome" do
    assert_difference('Chromosome.count', -1) do
      delete chromosome_url(@chromosome)
    end

    assert_redirected_to chromosomes_url
  end
end
