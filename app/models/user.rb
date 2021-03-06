class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :posts, foreign_key: :author_id
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable
  after_create :send_admin_mail
  def send_admin_mail
    UserMailer.signup_confirmation(self).deliver
  end
end
