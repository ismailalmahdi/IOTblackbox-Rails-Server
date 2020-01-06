class Sensor < ApplicationRecord
	include ActiveStorageSupport::SupportForBase64
	has_many :values, dependent: :destroy
	has_one_base64_attached :image
end
