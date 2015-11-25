class CreateUserProfiles < ActiveRecord::Migration
  def change
    create_table :user_profiles do |t|
      t.string :name
      t.string :phoneno
      t.string :address

      t.timestamps null: false
    end
  end
end
