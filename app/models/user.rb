# user class
class User < ApplicationRecord
  mount_uploader :avatar, AvatarUploader
  mount_uploades :documents, DocumentUploader
end
