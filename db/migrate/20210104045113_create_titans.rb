class CreateTitans < ActiveRecord::Migration[6.0]
  def change
    create_table :titans do |t|
      t.string :nickname
      t.string :size
      t.string :image_src
      t.text :details

      t.timestamps
    end
  end
end
