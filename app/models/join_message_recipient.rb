class JoinMessageRecipient < ApplicationRecord
  belongs_to :recipient, class_name: "User"
  belongs_to :private_message
  validates :title,
    presence: true,
    length: { in: 3..14 }
  validates :content,
    presence: true
end
