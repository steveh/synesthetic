class CreateDimensions < ActiveRecord::Migration

  def self.up
    create_table :dimensions do |t|
      t.integer :user_id
      t.integer :width
      t.integer :height
      t.integer :top
      t.integer :left
      t.integer :bottom
      t.integer :right
    end

    add_index :dimensions, :user_id, :unique => true
  end

  def self.down
    drop_table :dimensions
  end

end