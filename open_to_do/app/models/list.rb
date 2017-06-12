class List < ActiveRecord::Base
  enum permission: [:reserved, :open]
  
  belongs_to :user
  has_many :items, dependent: :destroy
  
  validates :user, presence: true
  
end

