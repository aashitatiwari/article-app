class Article < ActiveRecord::Base
validates :title, :description, presence:true
validates :title, length:{minimum:5}, uniqueness: true
extend FriendlyId
friendly_id :title, use: [:slugged, :finders]
belongs_to :user
end
