class Keyword
  include Mongoid::Document
  field :keyword, type: String

  has_many :blog_posts
  has_many :banners

  has_and_belongs_to_many :blog_posts
  has_and_belongs_to_many :banners
end
