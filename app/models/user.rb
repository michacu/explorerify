class User < ApplicationRecord
	attr_accessor :password
	email_regex = /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
	validates :name, :presence => true,
	          :length => { :within => 5..30 }
	validates :email, :presence => true,
			  :length => { :within => 5..50 },
	          :format => { :with => email_regex },
	          :uniqueness => { :case_sensitive => false }
	validates :password, :presence => true,
			  :confirmation => true,
			  :length => { :within => 6..40 }
	before_save :encrypt_password

	def has_password?(submitted_password)
		encrypt_password = encrypt(submitted_password)
	end

	def self.authenticate(email, submitted_password)
		user = find_by_email(email)

		return nil if user.nil?
		return user if user.has_password?(submitted_password)
	end

	private
		def encrypt_password
			self.salt = Digest::SHA2.hexdigest("#{Time.now.utc}--#{password}") if self.new_record?
			self.encrypted_password = encrypt(password)
		end

		def encrypt(pass)
			Digest::SHA2.hexdigest("#{self.salt}--#{pass}")
		end
end
