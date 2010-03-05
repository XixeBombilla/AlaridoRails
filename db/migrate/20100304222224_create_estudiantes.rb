class CreateEstudiantes < ActiveRecord::Migration
  def self.up
    create_table :estudiantes do |t|
      t.string :nombreUniversidad
      t.string :nombreEstudiante1
      t.string :nombreEstudiante2
      t.string :nombreEsudiante3
      t.string :matriculaEstudiante1
      t.string :matriculaEstudiante2
      t.string :matriculaEstudiante3

      t.timestamps
    end
  end

  def self.down
    drop_table :estudiantes
  end
end
