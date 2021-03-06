class Tag < ApplicationRecord
  has_many :join_tag_gossips
  has_many :gossips, through: :join_tag_gossips
  validates :title,
    presence: true,
    length: { in: 3..14 }
  validates :content,
    presence: true
end
