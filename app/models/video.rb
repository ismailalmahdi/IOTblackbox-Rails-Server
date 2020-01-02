class Video < ApplicationRecord
	include ActiveStorageSupport::SupportForBase64
	has_one_attached :clip
	has_one_attached :thumbnail
	has_one_base64_attached :clip
	has_one_base64_attached :thumbnail
end
