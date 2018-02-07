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
  


#  validate :check_total_weightage

  def total_planned_hours
  	self.phs_hours + self.culture_hours + self.spiritual_hours + self.social_hours + self.mental_hours
  end

  def total_weightage
  	self.phs_weightage + self.culture_weightage + self.spiritual_weightage + self.social_weightage + self.mental_weightage
  end

  def total_points
  	self.total_planned_hours * 10
  end

  def phs_total_points
  	self.phs_weightage * self.total_planned_hours * 10
  end

  def phs_points_to_percentage
  	self.phs_weightage * self.total_planned_hours * 10 * 0.01 
  end

  def culture_points_to_percentage
  	self.culture_weightage * self.total_planned_hours * 10 * 0.01   	
  end

  def spiritual_points_to_percentage
  	self.spiritual_weightage * self.total_planned_hours * 10 * 0.01   	
  end

  def social_points_to_percentage
  	self.social_weightage * self.total_planned_hours * 10 * 0.01   	
  end

  def mental_points_to_percentage
  	self.mental_weightage * self.total_planned_hours * 10 * 0.01   	
  end

  private

  def check_total_weightage
    if ( [phs_weightage.to_i, culture_weightage.to_i, spiritual_weightage.to_i, social_weightage.to_i, mental_weightage.to_i].inject(0){|sum,x| sum + x }  < 100 )
      errors.add(:base, 'Sum of Weightage can not be less than 100')
    end
    if ( [phs_weightage.to_i, culture_weightage.to_i, spiritual_weightage.to_i, social_weightage.to_i, mental_weightage.to_i].inject(0){|sum,x| sum + x }  > 100 )
      errors.add(:base, 'Sum of Weightage can not be more than 100')
    end
  end

end
