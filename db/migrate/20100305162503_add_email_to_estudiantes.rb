class AddEmailToEstudiantes < ActiveRecord::Migration
  def self.up
    add_column :estudiantes, :email1, :string
    add_column :estudiantes, :email2, :string
    add_column :estudiantes, :email3, :string
  end

  def self.down
    remove_column :estudiantes, :email3
    remove_column :estudiantes, :email2
    remove_column :estudiantes, :email1
  end
end
