class Song < ApplicationRecord
  # include Virtus.model
  #
  # attribute :command, Integer
  # attribute :note, Integer
  # attribute :velo, Integer
  # attribute :timing, Integer

  belongs_to :user

end
