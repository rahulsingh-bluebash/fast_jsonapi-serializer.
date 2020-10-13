class User < ApplicationRecord
  belongs_to :admin
  has_many :education
  has_one :personal_info
  has_one :organization
end
