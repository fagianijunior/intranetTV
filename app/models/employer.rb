class Employer < ActiveRecord::Base
  has_many :uniform_pieces
  
  before_save { self.name = name.humanize.titleize }
  
  before_save { self.avatar = 'https://c1.staticflickr.com/9/8542/8666789945_0077a6d060.jpg' }
  
  validates :name, :admission, :sex, presence: true
  
end
