class User < ActiveRecord::Base
  has_secure_password

  validates :email, presence: true, format: {
    with: /.+\@.+\..+/, message: "must have an @ symbol and period"
  }
  validates :auth_token, presence: true
end
