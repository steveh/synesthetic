class CreateTexts < ActiveRecord::Migration

  def self.up
    create_table :texts do |t|
      t.integer :user_id
      t.text :text
    end
  end

  def self.down
    drop_table :texts
  end

end