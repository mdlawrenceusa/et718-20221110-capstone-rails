require 'test_helper'

class NationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @nation = nations(:one)
  end

  test "should get index" do
    get nations_url
    assert_response :success
  end

  test "should get new" do
    get new_nation_url
    assert_response :success
  end

  test "should create nation" do
    assert_difference('Nation.count') do
      post nations_url, params: { nation: { GDP: @nation.GDP, birthrate: @nation.birthrate, healthexpenditurepercapita: @nation.healthexpenditurepercapita, healthexpenditureppercentGDP: @nation.healthexpenditureppercentGDP, lifeexpectancy: @nation.lifeexpectancy, mobilephones: @nation.mobilephones, mortalityunder5: @nation.mortalityunder5, name: @nation.name, population: @nation.population, populationurban: @nation.populationurban } }
    end

    assert_redirected_to nation_url(Nation.last)
  end

  test "should show nation" do
    get nation_url(@nation)
    assert_response :success
  end

  test "should get edit" do
    get edit_nation_url(@nation)
    assert_response :success
  end

  test "should update nation" do
    patch nation_url(@nation), params: { nation: { GDP: @nation.GDP, birthrate: @nation.birthrate, healthexpenditurepercapita: @nation.healthexpenditurepercapita, healthexpenditureppercentGDP: @nation.healthexpenditureppercentGDP, lifeexpectancy: @nation.lifeexpectancy, mobilephones: @nation.mobilephones, mortalityunder5: @nation.mortalityunder5, name: @nation.name, population: @nation.population, populationurban: @nation.populationurban } }
    assert_redirected_to nation_url(@nation)
  end

  test "should destroy nation" do
    assert_difference('Nation.count', -1) do
      delete nation_url(@nation)
    end

    assert_redirected_to nations_url
  end
end
