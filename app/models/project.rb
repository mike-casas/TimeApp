class Project < ActiveRecord::Base
  belongs_to :user
  has_many :activities
  validates :name, presence: true, uniqueness: true, length: { minimum: 5 }
end
