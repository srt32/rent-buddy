class Profile < ActiveRecord::Base
  attr_accessible :age, :criminal, :dob, :sex_offender, :user_id
end
