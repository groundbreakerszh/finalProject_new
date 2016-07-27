require 'test_helper'

class SoftSkillsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @soft_skill = soft_skills(:one)
  end

  test "should get index" do
    get soft_skills_url
    assert_response :success
  end

  test "should get new" do
    get new_soft_skill_url
    assert_response :success
  end

  test "should create soft_skill" do
    assert_difference('SoftSkill.count') do
      post soft_skills_url, params: { soft_skill: { best_friend: @soft_skill.best_friend, career: @soft_skill.career, dislike: @soft_skill.dislike, greatest_achievement: @soft_skill.greatest_achievement, greatest_regret: @soft_skill.greatest_regret, help: @soft_skill.help, impact: @soft_skill.impact, importance: @soft_skill.importance, like: @soft_skill.like, links_to_share: @soft_skill.links_to_share, more_about: @soft_skill.more_about, motto: @soft_skill.motto, super_power: @soft_skill.super_power } }
    end

    assert_redirected_to soft_skill_url(SoftSkill.last)
  end

  test "should show soft_skill" do
    get soft_skill_url(@soft_skill)
    assert_response :success
  end

  test "should get edit" do
    get edit_soft_skill_url(@soft_skill)
    assert_response :success
  end

  test "should update soft_skill" do
    patch soft_skill_url(@soft_skill), params: { soft_skill: { best_friend: @soft_skill.best_friend, career: @soft_skill.career, dislike: @soft_skill.dislike, greatest_achievement: @soft_skill.greatest_achievement, greatest_regret: @soft_skill.greatest_regret, help: @soft_skill.help, impact: @soft_skill.impact, importance: @soft_skill.importance, like: @soft_skill.like, links_to_share: @soft_skill.links_to_share, more_about: @soft_skill.more_about, motto: @soft_skill.motto, super_power: @soft_skill.super_power } }
    assert_redirected_to soft_skill_url(@soft_skill)
  end

  test "should destroy soft_skill" do
    assert_difference('SoftSkill.count', -1) do
      delete soft_skill_url(@soft_skill)
    end

    assert_redirected_to soft_skills_url
  end
end
