json.array!(@videos) do |video|
  json.extract! video, :id, :title, :duration, :embed_code, :description, :topic_id
  json.url video_url(video, format: :json)
end
