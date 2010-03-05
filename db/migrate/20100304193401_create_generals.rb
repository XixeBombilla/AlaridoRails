class CreateGenerals < ActiveRecord::Migration
  def self.up
    create_table :generals do |t|
      t.string :nombreEmpresa
      t.string :nombreIntegrante1
      t.string :nombreIntegrante2
      t.string :nombreIntegrante3
      t.string :logotipo

      t.timestamps
    end
  end

  def self.down
    drop_table :generals
  end
end
