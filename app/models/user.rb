# user class
class User < ApplicationRecord
  mount_uploaders :avatars, AvatarUploader
  mount_uploaders :documents, DocumentUploader
end
