class CreateTrips < ActiveRecord::Migration[6.0]
  def change
    create_table :trips do |t|
      t.string :type
      t.string :title
      t.string :details
      t.integer :total_participant
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
