class Link < ApplicationRecord
	validates_format_of :url, :with => URI::regexp(%w(http https))
	validates :title, presence: true, length: { minimum: 5 }

    acts_as_votable
	belongs_to :user
	has_many :comments
end
