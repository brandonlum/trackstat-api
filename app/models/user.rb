class User < ApplicationRecord
    has_many :scorecards
    has_secure_password
end
