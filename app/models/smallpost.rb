class Smallpost < ApplicationRecord
    validates :content, length: { maximum: 140 }, presence: true
    belongs_to :client

    scope :content_order, ->(order) {
        case order
        when "asc"
            order(content: :asc)
        when "desc"
            order(content: :desc)
        when "date"
            order(created_at: :asc)
        else
            all
        end
     }
end
