class General < ActiveRecord::Base
  
  validates_presence_of :nombreEmpresa, :on => :create, :message => "es obligatorio."
  has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  
end
