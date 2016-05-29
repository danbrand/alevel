json.array!(@topics) do |topic|
  json.extract! topic, :id, :number, :title, :video_count, :subject_id
  json.url topic_url(topic, format: :json)
end
