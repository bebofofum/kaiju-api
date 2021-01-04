class CreateSightings < ActiveRecord::Migration[6.0]
  def change
    create_table :sightings do |t|
      t.string :location
      t.datetime :sighting_event
      t.references :titan

      t.timestamps
    end
  end
end
