class CreatePublicos < ActiveRecord::Migration
  def self.up
    create_table :publicos do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :publicos
  end
end
