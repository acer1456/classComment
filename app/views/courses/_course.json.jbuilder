json.extract! course, :id, :name, :teacher, :comment, :vote, :created_at, :updated_at
json.url course_url(course, format: :json)