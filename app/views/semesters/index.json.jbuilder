json.array!(@semesters) do |semester|
  json.extract! semester, :name
  json.url semester_url(semester, format: :json)
end
