class Task < ApplicationRecord
    validates :status, presence: true, length: { maximum: 10 }
    validates :content, presence: true, length: { maximum: 255 }
    has_secure_password
end
