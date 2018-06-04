require 'mongoid'

# DB Setup
Mongoid.load! 'mongoid.yaml'

# Models
class Movie
  include Mongoid::Document

  field :title, type: String
  field :overview, type: String
  field :year, type: Numeric
  field :cast, type: Array

  validates :title, presence: true

  index({ title: 'text' }, name: 'title_index')

  scope :title, ->(title) { where(title: /#{title}*/) }
  scope :cast, ->(tags) { where(cast: /#{tags}*/) }
end
