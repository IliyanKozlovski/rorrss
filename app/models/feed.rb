class Feed < ApplicationRecord
  has_many :feed_entries, dependent: :destroy
end