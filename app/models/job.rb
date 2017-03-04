class Job < ActiveRecord::Base
belongs_to :department
has_many :access_jobs
has_many :users, through: :access_jobs
belongs_to :contract
belongs_to :work_pattern
belongs_to :grade
belongs_to :status
has_many :locations

validates :title, presence: true
validates :salaryMin, presence: true, length: {maximum: 6}
validates :salaryMax, presence: true, length: {maximum: 6}
validates :jobDescription, presence: true
validates :personalSpec, presence: true
validates :grade_id, presence: true
validates :contract_id, presence: true
validates :work_pattern_id, presence: true
validates :selectDetails, presence: true

scope :allocation, -> { where(status_id: 2) }

end
