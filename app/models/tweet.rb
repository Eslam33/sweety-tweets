class Tweet < ApplicationRecord
	belongs_to :user

    validates :tweet, presence: true ,  length: { minimum: 1 } ,  length: { maximum: 255 }

end
