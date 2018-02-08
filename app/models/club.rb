class Club < ApplicationRecord
  belongs_to :semester
  belongs_to :user

  has_many :members
  has_many :activities
  has_many :attendances, through: :activities

  validates :name, presence: true
  validates :about, presence: true
  validates :objective, presence: true
  validates :member_benefit, presence: true
  validates :community_benefit, presence: true
  # validates :phs_activity, presence: true
  # validates :phs_hours, presence: true
  # validates :phs_weightage, presence: true
  # validates :culture_activity, presence: true
  # validates :culture_hours, presence: true
  # validates :culture_weightage, presence: true
  # validates :spiritual_activity, presence: true
  # validates :spiritual_hours, presence: true
  # validates :spiritual_weightage, presence: true
  # validates :social_activity, presence: true
  # validates :social_hours, presence: true
  # validates :social_weightage, presence: true
  # validates :mental_activity, presence: true
  # validates :mental_hours, presence: true
  # validates :mental_weightage, presence: true
  
  validate :check_total_weightage
  validate :check_total_hours


  def total_planned_hours
    [phs_hours.to_i,culture_hours.to_i, spiritual_hours.to_i, social_hours.to_i, mental_hours.to_i ].inject(0){|sum,x| sum + x }
  end

  def total_weightage
  	[phs_weightage.to_i, culture_weightage.to_i, spiritual_weightage.to_i, social_weightage.to_i, mental_weightage.to_i].inject(0){|sum, x| sum + x}
  end

  def total_points
  	total_planned_hours.to_i * 10
  end

  def phs_total_points
  	phs_weightage.to_i * total_planned_hours.to_i * 10
  end

  def phs_points_to_percentage
  	phs_weightage.to_i * total_planned_hours.to_i * 10 * 0.01 
  end

  def culture_points_to_percentage
  	culture_weightage.to_i * total_planned_hours.to_i * 10 * 0.01   	
  end

  def spiritual_points_to_percentage
  	spiritual_weightage.to_i * total_planned_hours.to_i * 10 * 0.01   	
  end

  def social_points_to_percentage
  	social_weightage.to_i * total_planned_hours.to_i * 10 * 0.01   	
  end

  def mental_points_to_percentage
  	mental_weightage.to_i * total_planned_hours.to_i * 10 * 0.01   	
  end

  private

  def check_total_weightage
    if ( [phs_weightage.to_i, culture_weightage.to_i, spiritual_weightage.to_i, social_weightage.to_i, mental_weightage.to_i].inject(0){|sum,x| sum + x }  < 100 )
      errors.add(:base, 'Total Weightage Percentage can not be less than 100%')
    end
    if ( [phs_weightage.to_i, culture_weightage.to_i, spiritual_weightage.to_i, social_weightage.to_i, mental_weightage.to_i].inject(0){|sum,x| sum + x }  > 100 )
      errors.add(:base, 'Total Weightage Percentage can not be more than 100%')
    end
  end

  def check_total_hours
    if ( [phs_hours.to_i, culture_hours.to_i, spiritual_hours.to_i, social_hours.to_i, mental_hours.to_i].inject(0){|sum,x| sum + x }  > 30 )
      errors.add(:base, 'Total Hours can not be more than hours')
    end
  end

end
