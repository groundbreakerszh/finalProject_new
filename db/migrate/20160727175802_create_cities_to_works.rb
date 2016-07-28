class CreateCitiesToWorks < ActiveRecord::Migration[5.0]
  def change
    create_table :cities_to_works do |t|
      t.string :cities_to_works
      
      t.timestamps
    end
  end
end
