class Comment < ApplicationRecord
  belongs_to :blog_post
  has_rich_text :body
end
