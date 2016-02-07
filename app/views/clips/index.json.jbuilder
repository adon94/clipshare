json.array!(@clips) do |clip|
  json.extract! clip, :id, :title, :eurl
  json.url clip_url(clip, format: :json)
end
