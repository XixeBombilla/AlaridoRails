class CreateEmpresas < ActiveRecord::Migration
  def self.up
    create_table :empresas do |t|
      t.string :nombreEmpresa
      t.string :logotipo
      t.string :mensaje

      t.timestamps
    end
  end

  def self.down
    drop_table :empresas
  end
end
