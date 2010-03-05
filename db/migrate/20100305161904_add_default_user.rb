class AddDefaultUser < ActiveRecord::Migration
  def self.up
    if !User.find_by_login("admin")
      User.create(:login => "admin", :email => "admin@admin.com", :password => "administrador", :password_confirmation => "administrador")
    end
  end

  def self.down
  end
end
