require 'test_helper'

class PersonalInfosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @personal_info = personal_infos(:one)
  end

  test "should get index" do
    get personal_infos_url, as: :json
    assert_response :success
  end

  test "should create personal_info" do
    assert_difference('PersonalInfo.count') do
      post personal_infos_url, params: { personal_info: { address: @personal_info.address, gender: @personal_info.gender, phone_no: @personal_info.phone_no, user_id: @personal_info.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show personal_info" do
    get personal_info_url(@personal_info), as: :json
    assert_response :success
  end

  test "should update personal_info" do
    patch personal_info_url(@personal_info), params: { personal_info: { address: @personal_info.address, gender: @personal_info.gender, phone_no: @personal_info.phone_no, user_id: @personal_info.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy personal_info" do
    assert_difference('PersonalInfo.count', -1) do
      delete personal_info_url(@personal_info), as: :json
    end

    assert_response 204
  end
end
