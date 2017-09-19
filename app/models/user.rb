class User < ApplicationRecord
  has_secure_password
  validates_uniqueness_of :email

  before_validation :downcase_email

  private

  def downcase_email
    email.downcase if email
  end
end
