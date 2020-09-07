class Topic < ApplicationRecord
	has_many :topic_followers
	has_many :users, through: :toopic_followers
	has_many :questions

end
