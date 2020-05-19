class Micropost < ApplicationRecord
  validates :content,presence: true
  validates :content,length: { in: 1..140}
  validates :name,presence: true
end
