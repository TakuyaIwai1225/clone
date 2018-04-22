class Clone < ApplicationRecord
  validates :content, presence: true, length: { maximum: 140, message: '140字以内で入力してください' }
end