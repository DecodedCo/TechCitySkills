require 'test_helper'

class OpportunitiesControllerTest < ActionController::TestCase
  setup do
    @opportunity = opportunities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:opportunities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create opportunity" do
    assert_difference('Opportunity.count') do
      post :create, opportunity: { address: @opportunity.address, cost: @opportunity.cost, description: @opportunity.description, girls_only: @opportunity.girls_only, into_work: @opportunity.into_work, lat: @opportunity.lat, level_age_max: @opportunity.level_age_max, level_age_min: @opportunity.level_age_min, level_exp: @opportunity.level_exp, lon: @opportunity.lon, name: @opportunity.name, site_url: @opportunity.site_url }
    end

    assert_redirected_to opportunity_path(assigns(:opportunity))
  end

  test "should show opportunity" do
    get :show, id: @opportunity
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @opportunity
    assert_response :success
  end

  test "should update opportunity" do
    put :update, id: @opportunity, opportunity: { address: @opportunity.address, cost: @opportunity.cost, description: @opportunity.description, girls_only: @opportunity.girls_only, into_work: @opportunity.into_work, lat: @opportunity.lat, level_age_max: @opportunity.level_age_max, level_age_min: @opportunity.level_age_min, level_exp: @opportunity.level_exp, lon: @opportunity.lon, name: @opportunity.name, site_url: @opportunity.site_url }
    assert_redirected_to opportunity_path(assigns(:opportunity))
  end

  test "should destroy opportunity" do
    assert_difference('Opportunity.count', -1) do
      delete :destroy, id: @opportunity
    end

    assert_redirected_to opportunities_path
  end
end
