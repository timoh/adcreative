class BlogPost
  include Mongoid::Document
  field :title, type: String
  field :url, type: String
  field :published, type: Mongoid::Boolean
  field :publish_date, type: Date

  belongs_to :author
  belongs_to :priority
  belongs_to :publish_status

  has_many :banners
  has_and_belongs_to_many :keywords
end
