require 'test_helper'

class GenotypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @genotype = genotypes(:one)
  end

  test "should get index" do
    get genotypes_url
    assert_response :success
  end

  test "should get new" do
    get new_genotype_url
    assert_response :success
  end

  test "should create genotype" do
    assert_difference('Genotype.count') do
      post genotypes_url, params: { genotype: { allele: @genotype.allele, chromosome: @genotype.chromosome, comment: @genotype.comment, diagnosis_id: @genotype.diagnosis_id, genotype: @genotype.genotype, position: @genotype.position, reference: @genotype.reference } }
    end

    assert_redirected_to genotype_url(Genotype.last)
  end

  test "should show genotype" do
    get genotype_url(@genotype)
    assert_response :success
  end

  test "should get edit" do
    get edit_genotype_url(@genotype)
    assert_response :success
  end

  test "should update genotype" do
    patch genotype_url(@genotype), params: { genotype: { allele: @genotype.allele, chromosome: @genotype.chromosome, comment: @genotype.comment, diagnosis_id: @genotype.diagnosis_id, genotype: @genotype.genotype, position: @genotype.position, reference: @genotype.reference } }
    assert_redirected_to genotype_url(@genotype)
  end

  test "should destroy genotype" do
    assert_difference('Genotype.count', -1) do
      delete genotype_url(@genotype)
    end

    assert_redirected_to genotypes_url
  end
end
