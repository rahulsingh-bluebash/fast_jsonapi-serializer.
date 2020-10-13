class OrganizationSerializer
  include FastJsonapi::ObjectSerializer
  attributes :joining_date, :job_title

  belongs_to :user 
end
