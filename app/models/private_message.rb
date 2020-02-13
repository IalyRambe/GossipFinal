class PrivateMessage < ApplicationRecord
  belongs_to :sender, class_name: "User"
  has_many :join_message_recipients
  validates :title,
    presence: true,
    length: { in: 3..14 }
  validates :content,
    presence: true
end
