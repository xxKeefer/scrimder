class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|
      t.string :username
      t.string :bnet
      t.string :pref_role
      t.string :other_role
      t.integer :tank
      t.integer :damage
      t.integer :support
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
