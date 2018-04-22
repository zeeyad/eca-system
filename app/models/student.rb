class Student < ApplicationRecord
  has_many :members
  has_many :attendances, through: :members
  has_many :clubs, through: :members
  has_many :activities, through: :clubs
  
  validates :student_reg, presence: true, 
				uniqueness: { case_sensitive: false }
  validates :user_id, presence: true

  def total_hours
    attendances.where(status: true).map{|attend| attend.activity.no_of_hours}.sum
  end

  def total_points
    attendances.where(status: true).map{|attend| attend.activity.no_of_hours * attend.activity.weightage}.sum
  end

  def total_phs_points
    attendances.where(status: true).map{|attend| attend.activity.phs? ? attend.activity.no_of_hours * attend.activity.weightage : 0}.sum
  end

  def total_cultural_points
    attendances.where(status: true).map{|attend| attend.activity.phs? ? attend.activity.no_of_hours * attend.activity.weightage : 0}.sum
  end

  def total_spiritual_points
    attendances.where(status: true).map{|attend| attend.activity.spiritual? ? attend.activity.no_of_hours * attend.activity.weightage : 0}.sum
  end

  def total_sc_points
    attendances.where(status: true).map{|attend| attend.activity.sc? ? attend.activity.no_of_hours * attend.activity.weightage : 0}.sum
  end

  def total_mp_points
    attendances.where(status: true).map{|attend| attend.activity.mp? ? attend.activity.no_of_hours * attend.activity.weightage : 0}.sum
  end

end
