class User < ApplicationRecord
    require 'digest'

    attr_accessor :password_confirmation

    validates :email, presence: true
    validates :password, presence: true, confirmation: true
    validates :account, presence: true

    before_create :encrypt_password

    private
    def encrypt_password
       salted_pw = "xyz#{self.password}827128#{self.password}82-12j23h"
       self.password = Digest::SHA1.hexdigest(salted_pw)
    end
end
