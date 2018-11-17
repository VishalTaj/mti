class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.references :user, index: true
      t.string :name
      t.text :address
    end
  end
end
