require 'test_helper'

class HardSkillsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hard_skill = hard_skills(:one)
  end

  test "should get index" do
    get hard_skills_url
    assert_response :success
  end

  test "should get new" do
    get new_hard_skill_url
    assert_response :success
  end

  test "should create hard_skill" do
    assert_difference('HardSkill.count') do
      post hard_skills_url, params: { hard_skill: { linkedin: @hard_skill.linkedin, socialmediaprofile: @hard_skill.socialmediaprofile, travelamount: @hard_skill.travelamount, website: @hard_skill.website } }
    end

    assert_redirected_to hard_skill_url(HardSkill.last)
  end

  test "should show hard_skill" do
    get hard_skill_url(@hard_skill)
    assert_response :success
  end

  test "should get edit" do
    get edit_hard_skill_url(@hard_skill)
    assert_response :success
  end

  test "should update hard_skill" do
    patch hard_skill_url(@hard_skill), params: { hard_skill: { linkedin: @hard_skill.linkedin, socialmediaprofile: @hard_skill.socialmediaprofile, travelamount: @hard_skill.travelamount, website: @hard_skill.website } }
    assert_redirected_to hard_skill_url(@hard_skill)
  end

  test "should destroy hard_skill" do
    assert_difference('HardSkill.count', -1) do
      delete hard_skill_url(@hard_skill)
    end

    assert_redirected_to hard_skills_url
  end
end
