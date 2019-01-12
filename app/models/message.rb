class Message < ApplicationRecord
  belongs_to :user
  belongs_to :channel

  validates :content, presence: true
  validates :user_id, presence: true

  # after_create_commit do
  #   MessageCreationEventBroadcastJob.perform_later(self)
  # end
end
