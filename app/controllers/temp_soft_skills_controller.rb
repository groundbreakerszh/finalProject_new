class SoftSkillsController < ApplicationController
  def profile
    @soft_skills = SoftSkill.all
  end
  def soft_skills_params
    params.permit(
    :career, :importance, :impact,:super_power, :help, :like, :dislike
    :greatest_achievment, :best_friend, :greatest_regret, :motto,
    :links_to_share, :more_about
    )
  end
end
