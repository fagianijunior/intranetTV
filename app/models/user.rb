class User < ActiveRecord::Base
  belongs_to :employer
  
  has_secure_password

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  
  before_save { self.email = email.downcase }
  validates :employer, :role, presence: true
  validates :password, presence: true, length: { minimum: 6 }, on: :create
  validates :password, length: { minimum: 6 }, allow_blank: true, on: :update
  validates :email,    presence: true, format: { with: VALID_EMAIL_REGEX },
                       uniqueness: { case_sensitive: false }

  def admin?
    self.role == 'admin'
  end

  def default?
    self.role == 'default'
  end
end
