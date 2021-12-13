class Blog < ApplicationRecord
    has_many :blog_comment, -> { order "created_at DESC"}
end
