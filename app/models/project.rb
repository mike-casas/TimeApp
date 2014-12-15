class Project < ActiveRecord::Base
  belongs_to :user
  has_many :activities, dependent: :destroy
  validates :name, presence: true, uniqueness: true, length: { minimum: 5 }

  def total
    activities.sum(:total)
  end
end
