module readable_date_ranges
	def self.included(base)
		base.scope :created_this_week, -> { base.where(created_at: Date.today.at_beginning_of_week.beginning_of_day..Date.today.at_end_of_week.end_of_day) }
		base.scope :created_last_week, -> { base.where(created_at: 1.week.ago.at_beginning_of_week.beginning_of_day..1.week.ago.at_end_of_week.end_of_day) }
		base.scope :created_this_month, -> { base.where(created_at: Date.today.at_beginning_of_month.beginning_of_day..Date.today.at_end_of_month.end_of_day) }
		base.scope :created_last_month, -> { base.where(created_at: 1.month.ago.at_beginning_of_month.beginning_of_day..1.month.ago.at_end_of_month.end_of_day) }
		base.scope :created_this_year, -> { base.where(created_at: Date.today.at_beginning_of_year.beginning_of_day..Date.today.at_end_of_year.end_of_day) }
		base.scope :created_last_year, -> { base.where(created_at: 1.year.ago.at_beginning_of_year.beginning_of_day..1.year.ago.at_end_of_year.end_of_day) }
		
		base.scope :modified_this_week, -> { base.where(modified_at: Date.today.at_beginning_of_week.beginning_of_day..Date.today.at_end_of_week.end_of_day) }
		base.scope :modified_last_week, -> { base.where(modified_at: 1.week.ago.at_beginning_of_week.beginning_of_day..1.week.ago.at_end_of_week.end_of_day) }
		base.scope :modified_this_month, -> { base.where(modified_at: Date.today.at_beginning_of_month.beginning_of_day..Date.today.at_end_of_month.end_of_day) }
		base.scope :modified_last_month, -> { base.where(modified_at: 1.month.ago.at_beginning_of_month.beginning_of_day..1.month.ago.at_end_of_month.end_of_day) }
		base.scope :modified_this_year, -> { base.where(modified_at: Date.today.at_beginning_of_year.beginning_of_day..Date.today.at_end_of_year.end_of_day) }
		base.scope :modified_last_year, -> { base.where(modified_at: 1.year.ago.at_beginning_of_year.beginning_of_day..1.year.ago.at_end_of_year.end_of_day) }

	end
end