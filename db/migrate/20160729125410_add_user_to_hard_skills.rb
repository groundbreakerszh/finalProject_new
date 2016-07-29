class AddUserToHardSkills < ActiveRecord::Migration[5.0]
  def change
    add_reference :hard_skills, :user, foreign_key: true
  end
end
