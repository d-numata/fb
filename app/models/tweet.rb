class Tweet < ActiveRecord::Base
    validates :content, presence: true
    validates :content, length: { in: 1..140 }
    
    belongs_to :user
end
