class Estudiante < ActiveRecord::Base
  validates_presence_of :nombreEstudiante1, :on => :create, :message => "es un campo obligatorio"
  validates_format_of :email1, :with => /^(\S+)@(\S+).(\S)$/, :message => " por favor ingresa un email valido."
end
