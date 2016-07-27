class CreateHardSkills < ActiveRecord::Migration[5.0]
  def change
    create_table :hard_skills do |t|
      t.string :linkedin
      t.string :social_media_profile
      t.string :website
      t.string :travelamount
  
      t.timestamps
    end
  end
end
