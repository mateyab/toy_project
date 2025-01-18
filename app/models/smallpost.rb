class Smallpost < ApplicationRecord
    validates :content, length: { maximum: 140 }, presence: true
    belongs_to :client
end
