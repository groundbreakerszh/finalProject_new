class AddFieldsToUserprofile < ActiveRecord::Migration[5.0]
  def change
    #add fields to userprofile add_collum
    add_column :users, :name, :string
    add_column :users, :year_of_birth, :integer

  end
end
