class Order < ActiveRecord::Base
    belongs_to :product
    belongs_to :user
    validates :product, presence: true
    validates :user, presence: true
end
