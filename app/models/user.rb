class User < ApplicationRecord
  has_secure_password

  validates :name, presence: true
  validates :email, presence: true, uniqueness: { case_sensitive: false }
  validates :password, length: { minimum: 8 }, presence: true
  validates :password_confirmation, presence: true
  validate :password_confirmation_match

  def password_confirmation_match
    if password != password_confirmation
      errors.add(:password_confirmation, "the passwords must match")
    end
  end

  validates :password_confirmation, presence: true

  def self.authenticate_with_credentials(email, password)
    user = User.find_by_email(email.strip.downcase)
    if user && user.authenticate(password)
      user
    else
      nil
    end
  end
  
end
