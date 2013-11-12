json.array!(@college_classes) do |college_class|
  json.extract! college_class, :course_id, :name
  json.url college_class_url(college_class, format: :json)
end
