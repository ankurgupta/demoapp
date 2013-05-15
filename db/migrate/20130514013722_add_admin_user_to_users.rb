class AddAdminUserToUsers < ActiveRecord::Migration
  
  def up
    user = User.new(:email => 'admin@admin.com', :password => 'admin123')
    user.role = 'admin'
    user.save
  end
  
  def down
    User.where(:email => 'admin@admin.com').delete_all
  end
  
end
