class Subject < ActiveRecord::Base
  belongs_to :user
  has_many :topics

    mount_uploader :student_image, StudentImageUploader

    mount_uploader :subject_image, SubjectImageUploader

    accepts_nested_attributes_for :topics, allow_destroy: :true

end
