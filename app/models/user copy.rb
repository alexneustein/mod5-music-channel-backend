class User < ApplicationRecord
  # has_many :messages
  # has_many :channels, through: :messages

  validates :username, presence: true

  def self.all_usernames
    users = User.all
    users.map do |user|
      {
        'username' => user.username,
        'identifier' => user.identifier
      }
    end
  end
end
