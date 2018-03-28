class Activity < ApplicationRecord
  enum dev_aspect: { 
  	    "Physical Health and Safety": 0,
  	    Cultural: 1, 
  	    Spiritual: 2, 
  	    "Social and Community": 3,
  	    "Mental and Psychological": 4  
  	   }

  enum status: { planned: 0, completed: 1, cancelled: 2 }

  belongs_to :user
  belongs_to :club

  has_many :attendances

  # validates :name, presence: true


  scope :physical, -> { where(dev_aspect: 0).map(&:weightage).compact.reduce(:+) }
  scope :cultural, -> { where(dev_aspect: 1).map(&:weightage).compact.reduce(:+) }
  scope :spiritual, -> { where(dev_aspect: 2).map(&:weightage).compact.reduce(:+) }
  scope :social_community, -> { where(dev_aspect: 3).map(&:weightage).compact.reduce(:+) }
  scope :mental_psychological, -> { where(dev_aspect: 4).map(&:weightage).compact.reduce(:+) }


  def date_in_words
    date.strftime("%d %B %Y")
  end

  def time_in_words
    time.strftime("%I:%M %p")
  end

end
