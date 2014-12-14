json.array!(@visita) do |visitum|
  json.extract! visitum, :id, :current_user_id, :user_visited_id
  json.url visitum_url(visitum, format: :json)
end
