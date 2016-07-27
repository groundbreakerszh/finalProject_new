class CreateSoftSkills < ActiveRecord::Migration[5.0]
  def change
    create_table :soft_skills do |t|
      t.string :career
      t.string :importance
      t.string :impact
      t.string :super_power
      t.string :help
      t.string :like
      t.string :dislike
      t.string :greatest_achievement
      t.string :best_friend
      t.string :greatest_regret
      t.string :motto
      t.string :links_to_share
      t.string :more_about

      t.references :user

      t.timestamps
    end
  end
end
