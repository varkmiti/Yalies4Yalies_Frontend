class Post < ApplicationRecord
    has_many :replies
    belongs_to :user, optional: true
    # validates :title, presence: true
    # validates :content, prescence: true

    def self.order_by_time 
        Post.all.sort_by(&:created_at)
    end
end
