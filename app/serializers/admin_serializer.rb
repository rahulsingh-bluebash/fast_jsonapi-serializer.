class AdminSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name

  has_many :user
end
