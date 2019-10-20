class UserJob < ApplicationJob
  queue_as :users

  def perform(*args)
    @user.save
  end
end
