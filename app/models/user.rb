class User < ActiveRecord::Base
  include BCrypt

  validates :hashed_password, :first_name, :last_name, presence: true
  validates :email, { presence: true, uniqueness: true }

  def password
    @password ||= Password.new(hashed_password)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.hashed_password = @password
  end
end

