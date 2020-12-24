class Tweet < ApplicationRecord
  after_create_commit { broadcast_prepend_to "tweets" }
  after_update_commit { broadcast_replace_to "tweets" }
  after_destroy_commit { broadcast_remove_to "tweets" }

  validates :body, presence: true
end
