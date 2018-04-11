class Post < ApplicationRecord
	has_many :comments #s
	validates :title, presence: true,
						length: {minimum: 5}
end
