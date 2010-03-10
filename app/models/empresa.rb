class Empresa < ActiveRecord::Base
  
  validates_presence_of :nombreEmpresa, :on => :create, :message => "es obligatorio."
end
