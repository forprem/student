class Student < ApplicationRecord
    before_save { self.email = email.downcase }
    validates :name, presence: true, length: { minimum: 4, maximum: 50 }
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, length: { minimum: 3, maximum: 15 },
                uniqueness: { case_sensitive: false },
                format: { with: VALID_EMAIL_REGEX }
end