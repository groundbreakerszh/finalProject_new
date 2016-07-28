class CreateTravelAmounts < ActiveRecord::Migration[5.0]
  def change
    create_table :travel_amounts do |t|

      t.timestamps
    end
  end
end
