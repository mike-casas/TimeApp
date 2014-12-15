class Project < ActiveRecord::Base
  belongs_to :user
  has_many :activities, dependent: :destroy
  validates :name, presence: true, uniqueness: true, length: { minimum: 5 }
  scope :calculo, -> {joins(:activities).select(:name).group(:project_id).sum(:total)}
end
