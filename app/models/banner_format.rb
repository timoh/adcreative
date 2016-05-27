class BannerFormat
  include Mongoid::Document
  field :title, type: String
  field :height, type: Integer
  field :width, type: Integer
  has_many :banners
end
