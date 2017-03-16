class Application < ActiveRecord::Base
	belongs_to :job

	validates :first_name, presence: true
	validates :last_name, presence: true
	validates :job_id, presence: true

end
