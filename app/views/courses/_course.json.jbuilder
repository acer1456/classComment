json.extract! course, :id, :name, :teacher, :vote, :semester, :category, :created_at, :updated_at
json.url course_url(course, format: :json)