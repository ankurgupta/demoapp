class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable

  has_many :articles

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  
  ROLES = %w[admin reporter editor]
  
  before_create :default_role
  
  def is_admin?
    role == 'admin'
  end
  
  def is_editor?
    role == 'editor'
  end
  
  def is_reporter?
    role == 'reporter'
  end
  
  private
  
  def default_role
    self.role = 'reporter' if role.nil?
  end

end
