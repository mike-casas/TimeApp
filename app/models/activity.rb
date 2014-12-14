class Activity < ActiveRecord::Base
  belongs_to :project

   scope :list, -> { where.not(ended_at: nil)}


  def self.proceso
    Activity.find_by_ended_at(nil)
  end
end
