class Attachment < ApplicationRecord
  belongs_to :tour
  # santo
  mount_uploader :file, AttachmentUploader
end
