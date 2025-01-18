class Client < ApplicationRecord
    has_many :smallposts
    validates :user_name, presence: true
    validates :mail, presence: true
end
