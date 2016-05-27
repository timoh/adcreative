class PublishStatus
  include Mongoid::Document
  field :status_name, type: String
  field :ordering, type: Integer

  has_many :blog_posts
  has_many :banners
end
