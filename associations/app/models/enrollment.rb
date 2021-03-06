# == Schema Information
#
# Table name: enrollments
#
#  id         :integer          not null, primary key
#  course_id  :integer
#  student_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Enrollment < ApplicationRecord

  belongs_to :users,
  class_name: :User,
  primary_key: :id,
  foreign_key: :student_id

  belongs_to :courses,
  primary_key: :id,
  foreign_key: :course_id,
  class_name: :Course

end
