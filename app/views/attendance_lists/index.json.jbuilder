json.array!(@attendance_lists) do |attendance_list|
  json.extract! attendance_list, 
  json.url attendance_list_url(attendance_list, format: :json)
end