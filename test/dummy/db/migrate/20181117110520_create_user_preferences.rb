class CreateUserPreferences < ActiveRecord::Migration[5.2]
  def change
    create_table :user_preferences do |t|
      t.references :user, index: true
      t.string :hobbies
    end
  end
end
