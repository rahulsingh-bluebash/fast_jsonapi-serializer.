class PersonalInfoSerializer
  include FastJsonapi::ObjectSerializer
  attributes :gender, :phone_no, :address

  belongs_to :user
end
