class EducationSerializer
  include FastJsonapi::ObjectSerializer
  attributes :school, :degree

  belongs_to :user 
end
