class JoinTagGossip < ApplicationRecord
  belongs_to :tag
  belongs_to :gossip
  validates :title,
    presence: true,
    length: { in: 3..14 }
  validates :content,
    presence: true
end
