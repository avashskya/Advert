class User < ApplicationRecord
    # follow feature
    has_many :active_follows, class_name:"Follow", foreign_key: "follower_id", dependent: :destroy
    has_many :following, through: :active_follows, source: :followed
    
    has_many :passive_follows, class_name:"Follow", foreign_key: "followed_id", dependent: :destroy
    has_many :followers, through: :passive_follows, source: :follower
    
    def follow(user)
        active_follows.create(followed_id: user.id)
    end

    def unfollow(user)
        active_follows.find_by(followed_id: user.id).destroy
    end

    def following?(user)
        following.include(user)
    end

    # validations
    validates :name, presence: true
    validates :type, presence: true
    validates :email, presence: true
    validates :password, presence: true
    validates :credit, presence: true
       
end