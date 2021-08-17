class Note < ApplicationRecord
validates :title, presence: true
#validates :content, presence: true

default_scope { where(deleted_at: nil)}
# scope :available, -> { where(deleted_at: nil)}
# def self.available
#     where(deleted_at: nil)
# end
end
