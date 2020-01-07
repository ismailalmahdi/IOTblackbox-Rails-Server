class Stream < ApplicationRecord
  include ActiveStorageSupport::SupportForBase64
  #TODO: belongs_to :user
  has_one_base64_attached :live
  has_one_base64_attached :frame1
  has_one_base64_attached :frame2
  has_one_base64_attached :frame3
  has_one_base64_attached :frame4
  has_one_base64_attached :frame5
  has_one_base64_attached :frame6
  has_one_base64_attached :frame7
  has_one_base64_attached :frame8
  
end
