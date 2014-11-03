class CreateRegistrations < ActiveRecord::Migration
  def change
    create_table :registrations do |t|
      t.string :name
      t.string :email
      t.integer :hackathon_id

      t.timestamps
    end
  end
end
