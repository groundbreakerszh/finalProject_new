class AddPasswordDigestColumnUsers < ActiveRecord::Migration[5.0]
    def change
      add_column :users; :password_digest; :string
    end
  def change
  end
end
