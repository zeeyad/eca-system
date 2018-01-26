class Activity < ApplicationRecord
  enum dev_aspect: { 
  	    Physical_Health_and_Safety: 0,
  	    Cultural: 1, 
  	    Spiritual: 2, 
  	    Social_and_Community: 3,
  	    Mental_and_Psychological: 4  
  	   }

  belongs_to :user
  belongs_to :club

  scope :physical, -> { where(dev_aspect: 0).map(&:weightage).sum }
  scope :cultural, -> { where(dev_aspect: 1).map(&:weightage).sum }
  scope :spiritual, -> { where(dev_aspect: 2).map(&:weightage).sum }
  scope :social_community, -> { where(dev_aspect: 3).map(&:weightage).sum }
  scope :mental_psychological, -> { where(dev_aspect: 4).map(&:weightage).sum }

  has_many :attendances

  def date_in_words
    date.strftime("%d %B %Y")
  end

  def time_in_words
    time.strftime("%I:%M %p")
  end

end
