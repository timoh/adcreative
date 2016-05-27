class Banner
  include Mongoid::Document
  include Mongoid::Timestamps
  field :title, type: String
  mount_uploader :asset, AssetUploader
  belongs_to :banner_format
  belongs_to :blog_post
  belongs_to :author
  belongs_to :priority
  belongs_to :publish_status

  has_and_belongs_to_many :keywords
end
