class AddTClassToTitans < ActiveRecord::Migration[6.0]
  def change
    add_column :titans, :tclass, :string
  end
end
