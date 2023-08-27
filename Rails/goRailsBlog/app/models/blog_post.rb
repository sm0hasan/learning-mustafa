class BlogPost < ApplicationRecord

    belongs_to :user
    has_many :comments, dependent: :destroy

    has_one_attached :cover_image
    has_rich_text :content

    validates :title, presence: true
    validates :content, presence: true

    scope :sorted, lambda {order(Arel.sql("published_at DESC NULLS FIRST")).order(updated_at: :desc)}
    scope :draft, lambda {where(published_at: nil)}
    scope :published, lambda {where("published_at <= ?", Time.current)}
    scope :scheduled, lambda {where("published_at > ?", Time.current)}

    def draft?
        published_at.nil?
    end

    def published?
        published_at? && published_at <= Time.current
    end

    def scheduled?
        published_at? && published_at > Time.current
    end
end
