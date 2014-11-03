class CreateHackathons < ActiveRecord::Migration
  def change
    create_table :hackathons do |t|
      t.string :location
      t.datetime :date
      t.string :title

      t.timestamps
    end
  end
end
