json.array!(@subjects) do |subject|
  json.extract! subject, :id, :title, :subject_image, :subject_description, :student_image, :student_description, :price, :user_id
  json.url subject_url(subject, format: :json)
end
