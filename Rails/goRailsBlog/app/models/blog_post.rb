class BlogPost < ApplicationRecord

    validates :title, presence: true
    validates :body, presence: true

    scope :sorted, lambda {order(published_at: :desc, updated_at: :desc)}
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
