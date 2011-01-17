class CreateLetters < ActiveRecord::Migration

  def self.up
    create_table :letters do |t|
      t.integer :user_id
      t.string :letter
      t.string :colour
    end
  end

  def self.down
    drop_table :letters
  end

end