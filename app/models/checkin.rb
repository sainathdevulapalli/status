class Checkin < ActiveRecord::Base
	belongs_to :user

	validates :content, presence:true, length: {minimum: 2}
	validates :title, presence:true
	validates :user_id, presence:true
end
