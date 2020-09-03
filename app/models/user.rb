class User < ApplicationRecord
    has_one :collection
    has_many :items, through: :collection
    has_many :favorites
    
    has_secure_password
    validates :email, uniqueness: { case_sensitive: false }
end
