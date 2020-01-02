json.extract! video, :id, :title, :description, :flag, :clip, :thumbnail, :created_at, :updated_at
json.url video_url(video, format: :json)
